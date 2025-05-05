----------------------------- MODULE QLogTrace3 -----------------------------
EXTENDS Sequences, FiniteSets, Naturals, TLC

CONSTANTS ClientTrace, ServerTrace

VARIABLES ci, si

ClientLen == Len(ClientTrace)
ServerLen == Len(ServerTrace)

Min(S) == CHOOSE x \in S : \A y \in S : x <= y
Max(S) == CHOOSE x \in S : \A y \in S : x >= y

IsPacketSent(e) == e.name = "transport:packet_sent" /\ "header" \in DOMAIN e.data
IsPacketRecv(e) == e.name = "transport:packet_received" /\ "header" \in DOMAIN e.data
IsPacketDrop(e) == e.name = "transport:packet_dropped" /\ "header" \in DOMAIN e.data
HasFrames(e) == "frames" \in DOMAIN e.data
IsStreamTypeSet(e) == e.name = "http:stream_type_set" /\ "stream_id" \in DOMAIN e.data

SentEvents(trace, upto) == {i \in 1..upto: IsPacketSent(trace[i])}
RecvEvents(trace, upto) == {i \in 1..upto: IsPacketRecv(trace[i])}
DropEvents(trace, upto) == {i \in 1..upto: IsPacketDrop(trace[i])}

SentPktNums(trace, upto) == {trace[i].data.header.packet_number: i \in SentEvents(trace, upto)}
RecvPktNums(trace, upto) == {trace[i].data.header.packet_number: i \in RecvEvents(trace, upto)}
DropPktNums(trace, upto) == {trace[i].data.header.packet_number: i \in DropEvents(trace, upto)}

ValidFrameIndices(trace, upto) == {i \in 1..upto: HasFrames(trace[i])}

GetStreamIDs(frames) ==
  LET S == { x \in frames : "stream_id" \in DOMAIN x }
  IN { x["stream_id"] : x \in S }
StreamIDs(trace, upto) == UNION {GetStreamIDs(trace[i].data.frames): i \in ValidFrameIndices(trace, upto)}

StreamTypeIndices(trace, upto) == {i \in 1..upto: IsStreamTypeSet(trace[i])}
TypedStreams(trace, upto) == {trace[i].data.stream_id: i \in StreamTypeIndices(trace, upto)}

HasHandshakeDone(frames) == \E f \in frames: "frame_type" \in DOMAIN f /\ f["frame_type"] = "handshake_done"
HasConnectionClose(frames) == \E f \in frames: "frame_type" \in DOMAIN f /\ f["frame_type"] = "connection_close"

HandshakeSent(trace, upto) == {i \in ValidFrameIndices(trace, upto): HasHandshakeDone(trace[i].data.frames)}
HandshakeRecv(trace, upto) == {i \in ValidFrameIndices(trace, upto): HasHandshakeDone(trace[i].data.frames)}

ConnCloseSent(trace, upto) == {i \in ValidFrameIndices(trace, upto): HasConnectionClose(trace[i].data.frames)}
ConnCloseRecv(trace, upto) == {i \in ValidFrameIndices(trace, upto): HasConnectionClose(trace[i].data.frames)}

\* State Transitions
Init == ci = 1 /\ si = 1

ClientStep == /\ ci < ClientLen + 1 /\ ci' = ci + 1 /\ si' = si

ServerStep == /\ si < ServerLen + 1 /\ ci' = ci /\ si' = si+1

Stutter == /\ ci = ClientLen + 1 /\ si = ServerLen + 1
           /\ ci' = ci /\ si' = si

Next == ClientStep \/ ServerStep \/ Stutter
Spec == Init /\ [][Next]_<<ci, si>> /\ WF_<<ci,si>>(Next)


Safety_NoUnknownRecv ==
  RecvPktNums(ClientTrace, ci-1) \subseteq SentPktNums(ServerTrace, si-1) /\
  RecvPktNums(ServerTrace, si-1) \subseteq SentPktNums(ClientTrace, ci-1)

\*Safety_ACKsAreLegit ==
\*  /\ LET CA == 
\*     {<<f, SentPktNums(ServerTrace, si-1)>>
\*      : i \in ValidFrameIndices(ClientTrace, ci-1),
\*        f \in ClientTrace[i].data.frames /\
\*        "frame_type" \in DOMAIN f /\ f["frame_type"] = "ack" /\ "acked_ranges" \in DOMAIN f}
\*     IN
\*      \A pair \in CA:AckedPktNums(pair[1]["acked_ranges"]) \subseteq pair[2]
\*  /\ LET SA == 
\*     {<<f, SentPktNums(ClientTrace, ci-1)>>
\*      : i \in ValidFrameIndices(ServerTrace, si-1),
\*        f \in ServerTrace[i].data.frames /\
\*        "frame_type" \in DOMAIN f /\ f["frame_type"] = "ack" /\ "acked_ranges" \in DOMAIN f}
\*     IN
\*      \A pair \in SA:AckedPktNums(pair[1]["acked_ranges"]) \subseteq pair[2]

\*Safety_PktNosMonotonic ==
\*  LET
\*    cseq == [n \in 1..Cardinality(SentEvents(ClientTrace, ci-1)) |-> CHOOSE i \in SentEvents(ClientTrace, ci-1): Cardinality({j \in SentEvents(ClientTrace, ci-1): j < i}) = n - 1]
\*    sseq == [n \in 1..Cardinality(SentEvents(ServerTrace, si-1)) |-> CHOOSE i \in SentEvents(ServerTrace, si-1): Cardinality({j \in SentEvents(ServerTrace, si-1): j < i}) = n - 1]
\*  IN
\*    (\A n \in 2..Cardinality(cseq): ClientTrace[cseq[n]].data.header.packet_number > ClientTrace[cseq[n - 1]].data.header.packet_number) /\
\*    (\A n \in 2..Cardinality(sseq): ServerTrace[sseq[n]].data.header.packet_number > ServerTrace[sseq[n - 1]].data.header.packet_number)
\*Safety_PktNosMonotonic == 
\*    LET 
\*        cSent == SentEvents (ClientTrace, ci-1) 
\*        sSent == SentEvents (ServerTrace, si-1) 
\*        cseq == IF Cardinality (cSent) >= 2 
\*                THEN [n \in 1.. Cardinality (cSent) |-> 
\*                     CHOOSE i \in cSent: Cardinality({j \in cSent: j < i}) = n - 1] 
\*                ELSE [n \in {} |-> 0] 
\*                    sseq == IF Cardinality (sSent) >= 2 
\*                THEN [n \in 1.. Cardinality (sSent) |-> 
\*                     CHOOSE i \in sSent: Cardinality({j \in sSent: j < i}) = n - 1] 
\*                ELSE [n \in {} |-> 0] 
\*                    IN 
\*                    (Cardinality(cSent) < 2 \ (\A n \in 2..Cardinality (cSent): 
\*                    ClientTrace[cseq[n]].data.header.packet_number > ClientTrace [cseq[n-1]].data.header.packet_number)) 
\*                    /\
\*                    (Cardinality(sSent) < 2 \ (\A n \in 2..Cardinality (sSent): 
\*                    ServerTrace[sseq[n]].data.header.packet_number > ServerTrace[sseq [n-1]].data.header.packet_number))

\*Safety_PktNosMonotonic == 
\*LET 
\*    cSent == SentEvents(ClientTrace, ci-1) 
\*    sSent == SentEvents(ServerTrace, si-1) 
\*    cseq == [n \in 1..Cardinality (cSent) |-> 
\*        CHOOSE i \in cSent: Cardinality({j \in cSent: j < i}) = n - 1] 
\*    sseq == [n \in 1..Cardinality (sSent) |-> 
\*        CHOOSE i \in sSent: Cardinality({j \in sSent: j < i}) = n - 1]
\*IN 
\*    IF Cardinality (cSent) < 2 THEN TRUE 
\*    ELSE (\A n \in 2..Cardinality (cSent): 
\*        ClientTrace[cseq[n]].data.header.packet_number > ClientTrace [cseq [n-1]].data.header.packet_number) 
\*    /\
\*    IF Cardinality (sSent) < 2 THEN TRUE 
\*    ELSE (\A n \in 2.. Cardinality(sSent): 
\*        ServerTrace[sseq[n]].data.header.packet_number > ServerTrace [sseq[n-1]].data.header.packet_number) 

RECURSIVE CollectSentIndices(_,_) 
    CollectSentIndices (trace, upto) == 
        IF upto = 0 THEN <<>> 
        ELSE 
            LET tail == CollectSentIndices (trace, upto-1) 
            IN IF IsPacketSent (trace[upto]) 
            THEN tail \o << upto >> 
            ELSE tail 

Safety_PktNosMonotonic == 
    LET 
        cSentSeq == CollectSentIndices (ClientTrace, ci-1) 
        cLen == Len(cSentSeq) 
        sSentSeq == CollectSentIndices (ServerTrace, si-1) 
        sLen == Len(sSentSeq) 
    IN 
        (cLen < 2 \/ (\A k \in 2..cLen : 
        ClientTrace[cSentSeq[k]].data.header.packet_number > 
        ClientTrace [cSentSeq[k-1]].data.header.packet_number)) 
        /\
        (sLen < 2 \/ (\A k \in 2..sLen : 
        ServerTrace[sSentSeq[k]].data.header.packet_number > 
        ServerTrace[sSentSeq [k-1]].data.header.packet_number))

Safety_AllUsedStreamsTyped ==
  StreamIDs(ClientTrace, ci-1) \subseteq TypedStreams(ClientTrace, ci-1) /\
  StreamIDs(ServerTrace, si-1) \subseteq TypedStreams(ServerTrace, si-1)

Safety_AtMost1HandshakeClosePerTrace ==
  Cardinality(HandshakeSent(ClientTrace, ci-1)) <= 1 /\
  Cardinality(ConnCloseSent(ClientTrace, ci-1)) <= 1 /\
  Cardinality(HandshakeSent(ServerTrace, si-1)) <= 1 /\
  Cardinality(ConnCloseSent(ServerTrace, si-1)) <= 1

\*Safety_UniqueStreamType ==
\*  \A s \in TypedStreams(ClientTrace, ci-1):
\*    Cardinality({i \in StreamTypeIndices(ClientTrace, ci-1): ClientTrace[i].data.stream_id = s}) = 1 /\
\*  \A s \in TypedStreams(ServerTrace, si-1):
\*    Cardinality({i \in StreamTypeIndices(ServerTrace, si-1): ServerTrace[i].data.stream_id = s}) = 1

SAFETY ==
  Safety_NoUnknownRecv /\ Safety_PktNosMonotonic /\
  Safety_AllUsedStreamsTyped /\ Safety_AtMost1HandshakeClosePerTrace

\* Liveness Properties
Liveness_EverySentPktHandled ==
  SentPktNums(ClientTrace, ci-1) \subseteq (RecvPktNums(ServerTrace, si-1) \cup DropPktNums(ServerTrace, si-1)) /\
  SentPktNums(ServerTrace, si-1) \subseteq (RecvPktNums(ClientTrace, ci-1) \cup DropPktNums(ClientTrace, ci-1))

Liveness_AllTypedStreamsUsed ==
  TypedStreams(ClientTrace, ci-1) \subseteq StreamIDs(ClientTrace, ci-1) /\
  TypedStreams(ServerTrace, si-1) \subseteq StreamIDs(ServerTrace, si-1)

Liveness_HandshakeEnables1RTT ==
  \A t \in {"Client", "Server"}:
    LET
      trace == IF t = "Client" THEN ClientTrace ELSE ServerTrace
      hsidx == IF HandshakeSent(trace, Len(trace)) # {} THEN Min(HandshakeSent(trace, Len(trace))) ELSE Len(trace) + 1
      has1RTT == \E i \in SentEvents(trace, Len(trace)): i > hsidx /\ trace[i].data.header.packet_type = "1RTT"
    IN hsidx <= Len(trace) => has1RTT

Liveness_ConnCloseEventuallyObserved ==
  \A t \in {"Client", "Server"}:
    LET
      trace == IF t = "Client" THEN ClientTrace ELSE ServerTrace
      other == IF t = "Client" THEN ServerTrace ELSE ClientTrace
      closeldx == IF ConnCloseSent(trace, Len(trace)) # {} THEN Min(ConnCloseSent(trace, Len(trace))) ELSE Len(trace) + 1
      recvClose == \E i \in ConnCloseRecv(other, Len(other)): i >= closeldx
    IN closeldx <= Len(trace) => recvClose

Liveness_TypedStreamEventuallyFin ==
  \A s \in (TypedStreams(ClientTrace, ci-1) \cup TypedStreams(ServerTrace, si-1)):
    (\E i \in 1..ClientLen:
      HasFrames(ClientTrace[i]) /\ \E f \in ClientTrace[i].data.frames:
        "stream_id" \in DOMAIN f /\ f["stream_id"] = s /\ "fin" \in DOMAIN f /\ f["fin"] = TRUE)
    \/
    (\E i \in 1..ServerLen:
      HasFrames(ServerTrace[i]) /\ \E f \in ServerTrace[i].data.frames:
        "stream_id" \in DOMAIN f /\ f["stream_id"] = s /\ "fin" \in DOMAIN f /\ f["fin"] = TRUE)

LIVENESS ==
  Liveness_EverySentPktHandled /\ Liveness_AllTypedStreamsUsed /\ Liveness_HandshakeEnables1RTT /\
  Liveness_ConnCloseEventuallyObserved /\ Liveness_TypedStreamEventuallyFin

SafetySpec == Spec => []SAFETY
LivenessSpec == Spec => <>LIVENESS
=============================================================================