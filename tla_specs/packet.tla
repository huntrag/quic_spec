------------------------------- MODULE packet -------------------------------
EXTENDS Naturals, Sequences, TLC

CONSTANTS Events

VARIABLES idx, ConnState, SentPackets, ReceivedPackets

(* Connection States *)
CONN_IDLE    == "Idle"
CONN_OPEN    == "Open"
CONN_CLOSING == "Closing"
CONN_CLOSED  == "Closed"

(* Init *)
Init ==
    /\ idx = 1
    /\ ConnState = CONN_IDLE
    /\ SentPackets = {}
    /\ ReceivedPackets = {}

(* Extract event info *)
EventType(i) == Events[i]["name"]
EventData(i) == Events[i]["data"]

(* Next state transitions *)
Next ==
    /\ idx < Len(Events)
    /\ LET eType == EventType(idx) IN
       LET eData == EventData(idx) IN
       /\ IF eType = "connectivity:connection_started" THEN
              /\ ConnState' = CONN_OPEN
              /\ UNCHANGED <<SentPackets, ReceivedPackets>>
          ELSE IF eType = "transport:packet_sent" THEN
              /\ ConnState \in {CONN_OPEN}
              /\ SentPackets' = SentPackets \cup {eData["packet_number"]}
              /\ UNCHANGED ReceivedPackets
              /\ UNCHANGED ConnState
          ELSE IF eType = "transport:packet_received" THEN
              /\ ConnState \in {CONN_OPEN}
              /\ ReceivedPackets' = ReceivedPackets \cup {eData["packet_number"]}
              /\ UNCHANGED SentPackets
              /\ UNCHANGED ConnState
          ELSE IF eType = "connectivity:connection_closed" THEN
              /\ ConnState' = CONN_CLOSED
              /\ UNCHANGED <<SentPackets, ReceivedPackets>>
          ELSE
              /\ UNCHANGED <<ConnState, SentPackets, ReceivedPackets>>
    /\ idx' = idx + 1

(* Safety properties *)

(* Packets received must have been sent before *)
PacketsSentBeforeReceived ==
    \A pn \in ReceivedPackets :
        pn \in SentPackets

(* Sent packet numbers must be strictly increasing *)
PacketNumbersIncrease ==
    \A i \in 1..Len(Events)-1 :
        /\ EventType(i) = "transport:packet_sent"
        /\ EventType(i+1) = "transport:packet_sent"
        => EventData(i)["packet_number"] < EventData(i+1)["packet_number"]

(* No packets sent after connection closed *)
NoSendAfterClose ==
    \A i \in 1..Len(Events) :
        EventType(i) = "transport:packet_sent" =>
            LET prior_closes == { j \in 1..i-1 : EventType(j) = "connectivity:connection_closed" } IN
            prior_closes = {}

(* Specification *)
Spec ==
    Init /\ [][Next]_<<idx, ConnState, SentPackets, ReceivedPackets>>

(* Theorems: Things we want TLC to check *)

THEOREM Spec => [](PacketsSentBeforeReceived)

THEOREM Spec => [](PacketNumbersIncrease)

THEOREM Spec => [](NoSendAfterClose)

=============================================================================
\* Modification History
\* Last modified Sun Apr 27 17:57:22 IST 2025 by r29ag
\* Created Sun Apr 27 16:56:26 IST 2025 by r29ag
