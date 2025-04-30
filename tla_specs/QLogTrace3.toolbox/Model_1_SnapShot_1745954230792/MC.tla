---- MODULE MC ----
EXTENDS QLogTrace3, TLC

\* CONSTANT definitions @modelParameterConstants:0ServerTrace
const_1745954228728125000 == 
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
const_1745954228728126000 == 
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
const_expr_1745954228729127000 == 
Liveness_HandshakeEnables1RTT
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1745954228729127000>>)
----

=============================================================================
\* Modification History
\* Created Wed Apr 30 00:47:08 IST 2025 by r29ag
