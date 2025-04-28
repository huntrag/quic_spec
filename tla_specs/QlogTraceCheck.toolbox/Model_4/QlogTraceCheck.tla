--------------------------- MODULE QlogTraceCheck ---------------------------

EXTENDS Sequences, FiniteSets, Naturals, TLC

CONSTANTS Trace

VARIABLES
    SentPackets,
    RecvPackets,
    DroppedPackets,
    SentStreams,
    RecvStreams,
    TypeSetStreams,
    HandshakeDoneSent,
    HandshakeDoneRecv,
    ConnectionCloseSent,
    ConnectionCloseRecv
    
NULL == CHOOSE x : FALSE

Init ==
    /\ SentPackets = <<>>
    /\ RecvPackets = <<>>
    /\ DroppedPackets = {}
    /\ SentStreams = {}
    /\ RecvStreams = {}
    /\ TypeSetStreams = {}
    /\ HandshakeDoneSent = {}
    /\ HandshakeDoneRecv = {}
    /\ ConnectionCloseSent = {}
    /\ ConnectionCloseRecv = {}
    
GetStreamIDs(frames) == {f["stream_id"]: f \in {x \in frames: "stream_id" \in DOMAIN x}}

ValidSentIndices == 
    {i \in 1..Len(Trace): Trace[i].name = "transport:packet_sent" /\ "frames" \in DOMAIN Trace[i].data}
    
ValidRecvIndices == 
    {i \in 1..Len(Trace): Trace[i].name = "transport:packet_received" /\ "frames" \in DOMAIN Trace[i].data}
    
GoodIndices == {i \in 1..Len(Trace): Trace[i].name = "http:stream_type_set" /\ "stream_id" \in DOMAIN Trace[i].data}

Populate ==
    /\ SentPackets =
        [i \in 1..Len(Trace) |-> 
            IF Trace[i].name = "transport:packet_sent"
            THEN [
                index |-> i,
                pkt_num |-> Trace[i].data.header.packet_number,
                pkt_type |-> Trace[i].data.header.packet_type,
                dcid |-> Trace[i].data.header.dcid,
                scid |-> Trace[i].data.header.scid,
                frames |-> IF "frames" \in DOMAIN Trace[i].data THEN Trace[i].data.frames ELSE <<>>
            ]
            ELSE NULL
        ]
    /\ RecvPackets =
        [i \in 1..Len(Trace) |-> 
            IF Trace[i].name = "transport:packet_received"
            THEN [
                index |-> i,
                pkt_num |-> Trace[i].data.header.packet_number,
                pkt_type |-> Trace[i].data.header.packet_type,
                dcid |-> Trace[i].data.header.dcid,
                scid |-> Trace[i].data.header.scid,
                frames |-> IF "frames" \in DOMAIN Trace[i].data THEN Trace[i].data.frames ELSE <<>>
            ]
            ELSE NULL
        ]
    /\ DroppedPackets =
        [i \in 1..Len(Trace) |-> 
            IF Trace[i].name = "transport:packet_dropped"
            THEN [
                index |-> i,
                pkt_num |-> Trace[i].data.header.packet_number,
                pkt_type |-> Trace[i].data.header.packet_type,
                dcid |-> Trace[i].data.header.dcid,
                scid |-> Trace[i].data.header.scid,
                frames |-> IF "frames" \in DOMAIN Trace[i].data THEN Trace[i].data.frames ELSE <<>>
            ]
            ELSE NULL
        ]
    /\ SentStreams =
        UNION {GetStreamIDs(Trace[i].data.frames) : i \in ValidSentIndices}
    /\ RecvStreams =
        UNION {GetStreamIDs(Trace[i].data.frames) : i \in ValidRecvIndices}
    /\ TypeSetStreams =
        { Trace[i].data.stream_id :i \in GoodIndices}
    /\ HandshakeDoneSent =
        { i \in 1..Len(Trace) :
            /\ Trace[i].name = "transport:packet_sent"
            /\ "frames" \in DOMAIN Trace[i].data
            /\ (\E f \in Trace[i].data.frames :
                "frame_type" \in DOMAIN f /\ f.frame_type = "handshake_done")
        }
    /\ HandshakeDoneRecv =
        { i \in 1..Len(Trace) :
            /\ Trace[i].name = "transport:packet_received"
            /\ "frames" \in DOMAIN Trace[i].data
            /\ (\E f \in Trace[i].data.frames :
                "frame_type" \in DOMAIN f /\ f.frame_type = "handshake_done")
        }
    /\ ConnectionCloseSent =
        { i \in 1..Len(Trace) :
            /\ Trace[i].name = "transport:packet_sent"
            /\ "frames" \in DOMAIN Trace[i].data
            /\ (\E f \in Trace[i].data.frames :
                "frame_type" \in DOMAIN f /\ f.frame_type = "connection_close")
        }
    /\ ConnectionCloseRecv =
        { i \in 1..Len(Trace) :
            /\ Trace[i].name = "transport:packet_received"
            /\ "frames" \in DOMAIN Trace[i].data
            /\ (\E f \in Trace[i].data.frames :
                "frame_type" \in DOMAIN f /\ f.frame_type = "connection_close")
        }

Next ==
    UNCHANGED << SentPackets, RecvPackets, DroppedPackets,
                 SentStreams, RecvStreams, TypeSetStreams,
                 HandshakeDoneSent, HandshakeDoneRecv,
                 ConnectionCloseSent, ConnectionCloseRecv >>

=============================================================================

(*--- SAFETY PROPERTIES ---*)

Safety_NoRecvUnknownPacket ==
    LET RecvNums == { p.pkt_num : p \in RecvPackets, p # NULL }
        SentNums == { p.pkt_num : p \in SentPackets, p # NULL }
    IN  RecvNums \subseteq SentNums

Safety_AllStreamTypesSet ==
    (SentStreams \cup RecvStreams) \subseteq TypeSetStreams

Safety_CloseFollowsHandshake ==
    (ConnectionCloseSent # {}) => (HandshakeDoneSent # {})
    /\ (ConnectionCloseRecv # {}) => (HandshakeDoneRecv # {})

Safety_AtMostOneHandshakeAndClose ==
    /\ Cardinality(HandshakeDoneSent) <= 1
    /\ Cardinality(HandshakeDoneRecv) <= 1
    /\ Cardinality(ConnectionCloseSent) <= 1
    /\ Cardinality(ConnectionCloseRecv) <= 1

Safety_SentPktNumbersMonotonic ==
    LET nums == [i \in 1..Len(SentPackets) |->
                    IF SentPackets[i] # NULL THEN SentPackets[i].pkt_num ELSE -1
                ]
    IN  \A k \in 1..(Len(nums) - 1) :
            (nums[k] /= -1 /\ nums[k+1] /= -1) => nums[k+1] > nums[k]

Safety_RecvPktNumbersMonotonic ==
    LET nums == [i \in 1..Len(RecvPackets) |->
                    IF RecvPackets[i] # NULL THEN RecvPackets[i].pkt_num ELSE -1
                ]
    IN  \A k \in 1..(Len(nums) - 1) :
            (nums[k] /= -1 /\ nums[k+1] /= -1) => nums[k+1] > nums[k]

Safety_StreamTypeUnique ==
    \A s \in TypeSetStreams :
        Cardinality({ i \in 1..Len(Trace) :
                        /\ Trace[i].name = "http:stream_type_set"
                        /\ Trace[i].data.stream_id = s
                    }) = 1

Safety_UniqueCIDSet ==
    LET newconnframes ==
            { f.connection_id :
                i \in 1..Len(Trace),
                "frames" \in DOMAIN Trace[i].data,
                f \in Trace[i].data.frames,
                "frame_type" \in DOMAIN f /\ f.frame_type = "new_connection_id"
            }
    IN  Cardinality(newconnframes) = Cardinality({c \in newconnframes : TRUE})

=============================================================================

(*--- LIVENESS PROPERTIES ---*)

Liveness_EveryPacketHandled ==
    LET SentNums == { p.pkt_num : p \in SentPackets, p # NULL }
        RecvNums == { p.pkt_num : p \in RecvPackets, p # NULL }
        DropNums == { p.pkt_num : p \in DroppedPackets, p # NULL }
    IN  SentNums \subseteq RecvNums \cup DropNums

Liveness_StreamTypeUsed ==
    TypeSetStreams \subseteq SentStreams \cup RecvStreams

Liveness_HandshakeLeadsTo1RTT ==
    LET firstDoneSent ==
            Min({ SentPackets[i].index :
                    i \in 1..Len(SentPackets),
                    SentPackets[i] # NULL,
                    (\E f \in SentPackets[i].frames :
                        "frame_type" \in DOMAIN f /\ f.frame_type = "handshake_done")
                }, Len(SentPackets) + 1)
        next1RTTSent ==
            \E i \in 1..Len(SentPackets) :
                SentPackets[i] # NULL /\
                SentPackets[i].index > firstDoneSent /\
                SentPackets[i].pkt_type = "1RTT"
        firstDoneRecv ==
            Min({ RecvPackets[i].index :
                    i \in 1..Len(RecvPackets),
                    RecvPackets[i] # NULL,
                    (\E f \in RecvPackets[i].frames :
                        "frame_type" \in DOMAIN f /\ f.frame_type = "handshake_done")
                }, Len(RecvPackets) + 1)
        next1RTTRecv ==
            \E i \in 1..Len(RecvPackets) :
                RecvPackets[i] # NULL /\
                RecvPackets[i].index > firstDoneRecv /\
                RecvPackets[i].pkt_type = "1RTT"
    IN  (firstDoneSent <= Len(SentPackets) => next1RTTSent)
        /\ (firstDoneRecv <= Len(RecvPackets) => next1RTTRecv)

Liveness_ConnectionCloseLast ==
    LET lastSentEventIdx ==
            Max({ i \in 1..Len(Trace) : Trace[i].name = "transport:packet_sent" }, 0)
        lastRecvEventIdx ==
            Max({ i \in 1..Len(Trace) : Trace[i].name = "transport:packet_received" }, 0)
        closeSentIdx ==
            IF ConnectionCloseSent # {} THEN Max(ConnectionCloseSent, 0) ELSE 0
        closeRecvIdx ==
            IF ConnectionCloseRecv # {} THEN Max(ConnectionCloseRecv, 0) ELSE 0
    IN  (closeSentIdx = 0 \/ closeSentIdx = lastSentEventIdx)
        /\ (closeRecvIdx = 0 \/ closeRecvIdx = lastRecvEventIdx)

Liveness_StreamEventuallyFin ==
    \A s \in TypeSetStreams :
        \E i \in 1..Len(Trace) :
            /\ "frames" \in DOMAIN Trace[i].data
            /\ (\E f \in Trace[i].data.frames :
                "stream_id" \in DOMAIN f /\ f.stream_id = s /\
                "fin" \in DOMAIN f /\ f.fin = TRUE
            )

=============================================================================

Spec ==
    Init /\ Populate /\ [][Next]_<<
        SentPackets, RecvPackets, DroppedPackets,
        SentStreams, RecvStreams, TypeSetStreams,
        HandshakeDoneSent, HandshakeDoneRecv,
        ConnectionCloseSent, ConnectionCloseRecv
    >>

CHECK_SAFETY ==
    Safety_NoRecvUnknownPacket /\
    Safety_AllStreamTypesSet /\
    Safety_CloseFollowsHandshake /\
    Safety_AtMostOneHandshakeAndClose /\
    Safety_SentPktNumbersMonotonic /\
    Safety_RecvPktNumbersMonotonic /\
    Safety_StreamTypeUnique /\
    Safety_UniqueCIDSet

CHECK_LIVENESS ==
    Liveness_EveryPacketHandled /\
    Liveness_StreamTypeUsed /\
    Liveness_HandshakeLeadsTo1RTT /\
    Liveness_ConnectionCloseLast /\
    Liveness_StreamEventuallyFin

=============================================================================
(* Modification History
 * Last modified Sun Apr 27 22:57:40 IST 2025 by r29ag
 * Created Sun Apr 27 20:19:30 IST 2025 by r29ag
 *)
