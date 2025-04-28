---- MODULE MC ----
EXTENDS QLogTrace2, TLC

\* CONSTANT definitions @modelParameterConstants:0Trace
const_174581160346328000 == 
<<
  [data |-> [header |-> [packet_number |-> 0, packet_type |-> "initial", dcid |-> "0001", scid |-> "D1"],
             frames |-> << [frame_type |-> "crypto", stream_id |-> 0] >>],
   name |-> "transport:packet_sent", time |-> 1],

  [data |-> [header |-> [packet_number |-> 0, packet_type |-> "initial", dcid |-> "0001", scid |-> "D1"],
             frames |-> << [frame_type |-> "crypto", stream_id |-> 0] >>],
   name |-> "transport:packet_received", time |-> 2],

  [data |-> [stream_id |-> 0, new |-> "control"],
   name |-> "http:stream_type_set", time |-> 3],

  [data |-> [header |-> [packet_number |-> 1, packet_type |-> "1RTT", dcid |-> "0001", scid |-> "D1"],
             frames |-> << [frame_type |-> "stream", stream_id |-> 0, fin |-> TRUE] >>],
   name |-> "transport:packet_sent", time |-> 4],

  [data |-> [header |-> [packet_number |-> 1, packet_type |-> "1RTT", dcid |-> "0001", scid |-> "D1"],
             frames |-> << [frame_type |-> "stream", stream_id |-> 0, fin |-> TRUE] >>],
   name |-> "transport:packet_received", time |-> 5],

  [data |-> [header |-> [packet_number |-> 2, packet_type |-> "1RTT", dcid |-> "0001", scid |-> "D1"],
             frames |-> << [frame_type |-> "connection_close"] >>],
   name |-> "transport:packet_received", time |-> 6]
>>
----

\* Constant expression definition @modelExpressionEval
const_expr_174581160346329000 == 
SafeSentSeq
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_174581160346329000>>)
----

=============================================================================
\* Modification History
\* Created Mon Apr 28 09:10:03 IST 2025 by r29ag
