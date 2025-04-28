----------------------------- MODULE QLogTrace2 -----------------------------

EXTENDS Sequences, FiniteSets, Naturals, TLC

CONSTANTS Trace 

Min(S) == CHOOSE x \in S : \A y \in S : x <= y
Max(S) == CHOOSE x \in S : \A y \in S : x >= y


\* GATHERING EVENT INDICES

SentEvents == { i \in 1..Len(Trace) : "header" \in DOMAIN Trace[i].data /\ Trace[i].name = "transport:packet_sent" }
RecvEvents == { i \in 1..Len(Trace) : "header" \in DOMAIN Trace[i].data /\ Trace[i].name = "transport:packet_received" }
DropEvents == { i \in 1..Len(Trace) : "header" \in DOMAIN Trace[i].data /\ Trace[i].name = "transport:packet_dropped" }

\* PACKET NUMBER SETS

SentPktNums == { Trace[i].data.header.packet_number : i \in SentEvents }
RecvPktNums == { Trace[i].data.header.packet_number : i \in RecvEvents }
DropPktNums == { Trace[i].data.header.packet_number : i \in DropEvents }

\* STREAM REFERENCE SETS

ValidSentFrames == { i \in SentEvents : "frames" \in DOMAIN Trace[i].data }
ValidRecvFrames == { i \in RecvEvents : "frames" \in DOMAIN Trace[i].data }

GetStreamIDs(frames) ==
  LET S == { x \in frames : "stream_id" \in DOMAIN x }
  IN { x["stream_id"] : x \in S }

SentStreams == UNION { GetStreamIDs(Trace[i].data.frames) : i \in ValidSentFrames }
RecvStreams == UNION { GetStreamIDs(Trace[i].data.frames) : i \in ValidRecvFrames }

ValidTypeSetIndices == { i \in 1..Len(Trace) : Trace[i].name = "http:stream_type_set" /\ "stream_id" \in DOMAIN Trace[i].data }
TypeSetStreams == { Trace[i].data.stream_id : i \in ValidTypeSetIndices }

\* HANDSHAKE/CLOSE EVENTS

HasHandshake(frames) == \E f \in frames : "frame_type" \in DOMAIN f /\ f["frame_type"] = "handshake_done"
HasClose(frames) == \E f \in frames : "frame_type" \in DOMAIN f /\ f["frame_type"] = "connection_close"

HandshakeDoneSent == { i \in ValidSentFrames : HasHandshake(Trace[i].data.frames) }
HandshakeDoneRecv == { i \in ValidRecvFrames : HasHandshake(Trace[i].data.frames) }

ConnectionCloseSent == { i \in ValidSentFrames : HasClose(Trace[i].data.frames) }
ConnectionCloseRecv == { i \in ValidRecvFrames : HasClose(Trace[i].data.frames) }

\* SAFETY PROPERTIES

Safety_NoRecvUnknownPacket == RecvPktNums \subseteq SentPktNums

Safety_AllStreamsTypeSet == (SentStreams \cup RecvStreams) \subseteq TypeSetStreams

\*Safety_CloseFollowsHandshake ==
\*  (ConnectionCloseSent # {}) => (HandshakeDoneSent # {}) /\
\*  (ConnectionCloseRecv # {}) => (HandshakeDoneRecv # {})

Safety_AtMostOneHandshakeAndClose ==
  Cardinality(HandshakeDoneSent) <= 1 /\
  Cardinality(HandshakeDoneRecv) <= 1 /\
  Cardinality(ConnectionCloseSent) <= 1 /\
  Cardinality(ConnectionCloseRecv) <= 1

SafeSentSeq ==
  IF Cardinality(SentEvents) = 0
  THEN << >>
  ELSE [k \in 1..Cardinality(SentEvents) |-> 
          CHOOSE i \in SentEvents : Cardinality({ j \in SentEvents : j < i }) = k-1]

SafeRecvSeq ==
  IF Cardinality(RecvEvents) = 0
  THEN << >>
  ELSE [k \in 1..Cardinality(RecvEvents) |-> 
          CHOOSE i \in RecvEvents : Cardinality({ j \in RecvEvents : j < i }) = k-1]

Safety_SentPktNumbersMonotonic ==
  \A n \in 2..Len(SafeSentSeq) :
    Trace[SafeSentSeq[n]].data.header.packet_number > Trace[SafeSentSeq[n-1]].data.header.packet_number

Safety_RecvPktNumbersMonotonic ==
  \A n \in 2..Len(SafeRecvSeq) :
    Trace[SafeRecvSeq[n]].data.header.packet_number > Trace[SafeRecvSeq[n-1]].data.header.packet_number

Safety_StreamTypeUnique ==
  \A s \in TypeSetStreams :
    Cardinality({ i \in ValidTypeSetIndices : Trace[i].data.stream_id = s }) = 1

\*Safety_UniqueCIDSet ==
\*  LET newconnframes ==
\*    { f["connection_id"] :
\*        i \in 1..Len(Trace),
\*        "frames" \in DOMAIN Trace[i].data,
\*        f \in Trace[i].data.frames,
\*        "frame_type" \in DOMAIN f,
\*        f["frame_type"] = "new_connection_id",
\*        "connection_id" \in DOMAIN f
\*    }
\*  IN Cardinality(newconnframes) = Cardinality({ c \in newconnframes : TRUE })

\* LIVENESS PROPERTIES

Liveness_EveryPacketHandled == SentPktNums \subseteq (RecvPktNums \cup DropPktNums)

Liveness_StreamTypeUsed == TypeSetStreams \subseteq (SentStreams \cup RecvStreams)

Liveness_HandshakeLeadsTo1RTT ==
  LET
    FirstDoneSentIdx ==
      IF HandshakeDoneSent # {}
      THEN Min(HandshakeDoneSent)
      ELSE Len(Trace) + 1
    FirstSent1RTT ==
      \E i \in SentEvents :
        i > FirstDoneSentIdx /\ Trace[i].data.header.packet_type = "1RTT"
    FirstDoneRecvIdx ==
      IF HandshakeDoneRecv # {}
      THEN Min(HandshakeDoneRecv)
      ELSE Len(Trace) + 1
    FirstRecv1RTT ==
      \E i \in RecvEvents :
        i > FirstDoneRecvIdx /\ Trace[i].data.header.packet_type = "1RTT"
  IN (FirstDoneSentIdx <= Len(Trace) => FirstSent1RTT) /\ (FirstDoneRecvIdx <= Len(Trace) => FirstRecv1RTT)

Liveness_ConnectionCloseLast ==
  LET
    lastSentEventIdx ==
      IF SentEvents # {}
      THEN Max(SentEvents)
      ELSE 0
    lastRecvEventIdx ==
      IF RecvEvents # {}
      THEN Max(RecvEvents)
      ELSE 0
    closeSentIdx ==
      IF ConnectionCloseSent # {}
      THEN Max(ConnectionCloseSent)
      ELSE 0
    closeRecvIdx ==
      IF ConnectionCloseRecv # {}
      THEN Max(ConnectionCloseRecv)
      ELSE 0
  IN
    (closeSentIdx = 0 \/ closeSentIdx = lastSentEventIdx) /\
    (closeRecvIdx = 0 \/ closeRecvIdx = lastRecvEventIdx)

Liveness_StreamEventuallyFin ==
  \A s \in TypeSetStreams :
    \E i \in 1..Len(Trace) :
      "frames" \in DOMAIN Trace[i].data /\
      (\E f \in Trace[i].data.frames :
        "stream_id" \in DOMAIN f /\ f["stream_id"] = s /\
        "fin" \in DOMAIN f /\ f["fin"] = TRUE)

=====================================================================================
