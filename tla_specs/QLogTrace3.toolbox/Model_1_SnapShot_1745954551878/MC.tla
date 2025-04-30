---- MODULE MC ----
EXTENDS QLogTrace3, TLC

\* CONSTANT definitions @modelParameterConstants:0ServerTrace
const_1745954549813142000 == 
<<
  [name |-> "transport:packet_received",
   data |-> [header |-> [packet_number |-> 1, packet_type |-> "initial"]],
   time |-> 1],

  [name |-> "transport:packet_sent",
   data |-> [header |-> [packet_number |-> 1, packet_type |-> "initial"]],
   time |-> 2],

  [name |-> "http:stream_type_set",
   data |-> [stream_id |-> 0, new |-> "control"],
   time |-> 3],

  [name |-> "transport:packet_received",
   data |-> [header |-> [packet_number |-> 2, packet_type |-> "1RTT"],
             frames |-> << [frame_type |-> "stream", stream_id |-> 0, fin |-> TRUE] >>],
   time |-> 4],

  [name |-> "transport:packet_sent",
   data |-> [header |-> [packet_number |-> 2, packet_type |-> "1RTT"],
             frames |-> << [frame_type |-> "stream", stream_id |-> 0, fin |-> TRUE] >>],
   time |-> 5]
>>
----

\* CONSTANT definitions @modelParameterConstants:1ClientTrace
const_1745954549813143000 == 
<<
  [name |-> "transport:packet_sent",
   data |-> [header |-> [packet_number |-> 1, packet_type |-> "initial"]],
   time |-> 1],

  [name |-> "transport:packet_received",
   data |-> [header |-> [packet_number |-> 1, packet_type |-> "initial"]],
   time |-> 2],

  [name |-> "http:stream_type_set",
   data |-> [stream_id |-> 0, new |-> "control"],
   time |-> 3],

  [name |-> "transport:packet_sent",
   data |-> [header |-> [packet_number |-> 2, packet_type |-> "1RTT"],
             frames |-> << [frame_type |-> "stream", stream_id |-> 0, fin |-> TRUE] >>],
   time |-> 4],

  [name |-> "transport:packet_received",
   data |-> [header |-> [packet_number |-> 2, packet_type |-> "1RTT"],
             frames |-> << [frame_type |-> "stream", stream_id |-> 0, fin |-> TRUE] >>],
   time |-> 5]
>>
----

\* Constant expression definition @modelExpressionEval
const_expr_1745954549813144000 == 
Safety_NoUnknownRecv
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1745954549813144000>>)
----

\* INIT definition @modelBehaviorNoSpec:0
init_1745954549813145000 ==
FALSE/\ci = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_1745954549813146000 ==
FALSE/\ci' = ci
----
=============================================================================
\* Modification History
\* Created Wed Apr 30 00:52:29 IST 2025 by r29ag
