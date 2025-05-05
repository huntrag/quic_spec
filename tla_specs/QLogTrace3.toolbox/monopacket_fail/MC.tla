---- MODULE MC ----
EXTENDS QLogTrace3, TLC

\* CONSTANT definitions @modelParameterConstants:0ServerTrace
const_1746463784572229000 == 
<< 
  [ name |-> "http:stream_type_set", 
    data |-> [ new |-> "control", stream_id |-> 0], 
    time |-> 150],

  [ name |-> "transport:packet_received", 
    data |-> [ frames |-> << [frame_type |-> "crypto", offset |-> 0] >>, 
               header |-> [packet_number |-> 0, packet_type |-> "initial"], 
               raw |-> [length |-> 1200] ], 
    time |-> 1200],

  [ name |-> "transport:packet_sent", 
    data |-> [ frames |-> << [frame_type |-> "ack", acked_ranges |-> << <<0,0>> >>] >>, 
               header |-> [packet_number |-> 0, packet_type |-> "initial"], 
               raw |-> [length |-> 50] ], 
    time |-> 2100],

  [ name |-> "transport:packet_received", 
    data |-> [ frames |-> << [frame_type |-> "handshake_done"] >>, 
               header |-> [packet_number |-> 1, packet_type |-> "1RTT"], 
               raw |-> [length |-> 100] ], 
    time |-> 2600],

  [ name |-> "transport:packet_sent", 
    data |-> [ frames |-> << [frame_type |-> "stream", stream_id |-> 0, fin |-> FALSE] >>, 
               header |-> [packet_number |-> 1, packet_type |-> "1RTT"], 
               raw |-> [length |-> 70] ], 
    time |-> 3600],

  [ name |-> "transport:packet_received", 
    data |-> [ frames |-> << [frame_type |-> "stream", stream_id |-> 0, fin |-> TRUE] >>, 
               header |-> [packet_number |-> 3, packet_type |-> "1RTT"], 
               raw |-> [length |-> 55] ], 
    time |-> 4200],

  [ name |-> "transport:packet_sent", 
    data |-> [ frames |-> << [frame_type |-> "stream", stream_id |-> 0, fin |-> TRUE] >>, 
               header |-> [packet_number |-> 2, packet_type |-> "1RTT"], 
               raw |-> [length |-> 50] ], 
    time |-> 5100],

  [ name |-> "transport:packet_received", 
    data |-> [ frames |-> << [frame_type |-> "connection_close"] >>, 
               header |-> [packet_number |-> 4, packet_type |-> "1RTT"], 
               raw |-> [length |-> 50] ], 
    time |-> 6200]
>>
----

\* CONSTANT definitions @modelParameterConstants:1ClientTrace
const_1746463784572230000 == 
 << 
  [ name |-> "http:stream_type_set", 
    data |-> [ new |-> "control", stream_id |-> 0], 
    time |-> 100],

  [ name |-> "transport:packet_sent", 
    data |-> [ frames |-> << [frame_type |-> "crypto", offset |-> 0] >>, 
               header |-> [packet_number |-> 10, packet_type |-> "initial"], 
               raw |-> [length |-> 1200] ], 
    time |-> 1000],

  [ name |-> "transport:packet_received", 
    data |-> [ frames |-> << [frame_type |-> "ack", acked_ranges |-> << <<0,0>> >>] >>, 
               header |-> [packet_number |-> 23, packet_type |-> "initial"], 
               raw |-> [length |-> 50] ], 
    time |-> 1800],

  [ name |-> "transport:packet_sent", 
    data |-> [ frames |-> << [frame_type |-> "handshake_done"] >>, 
               header |-> [packet_number |-> 51, packet_type |-> "1RTT"], 
               raw |-> [length |-> 100] ], 
    time |-> 2400],

  [ name |-> "transport:packet_sent", 
    data |-> [ frames |-> << [frame_type |-> "stream", stream_id |-> 0, fin |-> FALSE] >>, 
               header |-> [packet_number |-> 2, packet_type |-> "1RTT"], 
               raw |-> [length |-> 60] ], 
    time |-> 3000],

  [ name |-> "transport:packet_received", 
    data |-> [ frames |-> << [frame_type |-> "ack", acked_ranges |-> << <<2,2>> >>] >>, 
               header |-> [packet_number |-> 72, packet_type |-> "1RTT"], 
               raw |-> [length |-> 60] ], 
    time |-> 3700],

  [ name |-> "transport:packet_sent", 
    data |-> [ frames |-> << [frame_type |-> "stream", stream_id |-> 0, fin |-> TRUE] >>, 
               header |-> [packet_number |-> 123, packet_type |-> "1RTT"], 
               raw |-> [length |-> 55] ], 
    time |-> 4500],

  [ name |-> "transport:packet_sent", 
    data |-> [ frames |-> << [frame_type |-> "connection_close"] >>, 
               header |-> [packet_number |-> 4, packet_type |-> "1RTT"], 
               raw |-> [length |-> 50] ], 
    time |-> 5500]
>>
----

=============================================================================
\* Modification History
\* Created Mon May 05 22:19:44 IST 2025 by r29ag
