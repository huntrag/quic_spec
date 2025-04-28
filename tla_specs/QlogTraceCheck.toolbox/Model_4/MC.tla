---- MODULE MC ----
EXTENDS QlogTraceCheck, TLC

\* CONSTANT definitions @modelParameterConstants:0Trace
const_174578620206112000 == 
<<
    [name |-> "transport:packet_sent", data |-> [header |-> [packet_number |-> 1, packet_type |-> "Initial"]]],
    [name |-> "transport:packet_sent", data |-> [header |-> [packet_number |-> 2, packet_type |-> "Handshake"]]],
    [name |-> "transport:packet_received", data |-> [header |-> [packet_number |-> 1, packet_type |-> "Initial"]]]
>>
----

=============================================================================
\* Modification History
\* Created Mon Apr 28 02:06:42 IST 2025 by r29ag
