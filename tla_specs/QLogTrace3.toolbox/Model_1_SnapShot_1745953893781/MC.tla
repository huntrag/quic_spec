---- MODULE MC ----
EXTENDS QLogTrace3, TLC

\* CONSTANT definitions @modelParameterConstants:0ServerTrace
const_174595389272695000 == 
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
const_174595389272696000 == 
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

=============================================================================
\* Modification History
\* Created Wed Apr 30 00:41:32 IST 2025 by r29ag
