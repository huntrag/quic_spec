---- MODULE MC ----
EXTENDS QLogTrace3, TLC

\* CONSTANT definitions @modelParameterConstants:0ServerTrace
const_1745979656485341000 == 
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

  [name |-> "http:stream_type_set",
   data |-> [stream_id |-> 4, new |-> "qpack_encoder"],
   time |-> 3],

  [name |-> "transport:packet_received",
   data |-> [header |-> [packet_number |-> 2, packet_type |-> "handshake"],
             frames |-> << [frame_type |-> "handshake_done"] >>],
   time |-> 4],

  [name |-> "transport:packet_sent",
   data |-> [header |-> [packet_number |-> 2, packet_type |-> "handshake"],
             frames |-> << [frame_type |-> "handshake_done"] >>],
   time |-> 5],

  [name |-> "transport:packet_received",
   data |-> [header |-> [packet_number |-> 3, packet_type |-> "1RTT"],
             frames |-> << [frame_type |-> "stream", stream_id |-> 4, fin |-> TRUE] >>],
   time |-> 6],

  [name |-> "transport:packet_received",
   data |-> [header |-> [packet_number |-> 3, packet_type |-> "1RTT"],
             frames |-> << [frame_type |-> "stream", stream_id |-> 0, fin |-> TRUE] >>],
   time |-> 6],

  [name |-> "transport:packet_received",
   data |-> [header |-> [packet_number |-> 4, packet_type |-> "1RTT"],
             frames |-> << [frame_type |-> "connection_close"] >>],
   time |-> 7]
>>
----

\* CONSTANT definitions @modelParameterConstants:1ClientTrace
const_1745979656485342000 == 
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

  [name |-> "http:stream_type_set",
   data |-> [stream_id |-> 4, new |-> "qpack_encoder"],
   time |-> 3],

  [name |-> "transport:packet_sent",
   data |-> [header |-> [packet_number |-> 2, packet_type |-> "handshake"],
             frames |-> << [frame_type |-> "handshake_done"] >>],
   time |-> 4],

  [name |-> "transport:packet_received",
   data |-> [header |-> [packet_number |-> 2, packet_type |-> "handshake"],
             frames |-> << [frame_type |-> "handshake_done"] >>],
   time |-> 5],

  [name |-> "transport:packet_sent",
   data |-> [header |-> [packet_number |-> 3, packet_type |-> "1RTT"],
             frames |-> << [frame_type |-> "stream", stream_id |-> 0, fin |-> TRUE],
                          [frame_type |-> "stream", stream_id |-> 4, fin |-> TRUE] >>],
   time |-> 6],

  [name |-> "transport:packet_sent",
   data |-> [header |-> [packet_number |-> 4, packet_type |-> "1RTT"],
             frames |-> << [frame_type |-> "connection_close"] >>],
   time |-> 7]
>>
----

=============================================================================
\* Modification History
\* Created Wed Apr 30 07:50:56 IST 2025 by r29ag
