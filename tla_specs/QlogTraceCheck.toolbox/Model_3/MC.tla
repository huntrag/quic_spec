---- MODULE MC ----
EXTENDS QlogTraceCheck, TLC

\* CONSTANT definitions @modelParameterConstants:0Trace
const_17457860857912000 == 
 <<
    [name |-> "transport:packet_sent", data |-> [header |-> [packet_number |-> 1, packet_type |-> "Initial"]]],
    [name |-> "transport:packet_sent", data |-> [header |-> [packet_number |-> 2, packet_type |-> "Handshake"]]],
    [name |-> "transport:packet_received", data |-> [header |-> [packet_number |-> 1, packet_type |-> "Initial"]]]
>>
----

\* PROPERTY definition @modelCorrectnessProperties:0
prop_17457860857913000 ==
CHECK_SAFETY
----
\* PROPERTY definition @modelCorrectnessProperties:1
prop_17457860857914000 ==
CHECK_LIVENESS
----
=============================================================================
\* Modification History
\* Created Mon Apr 28 02:04:45 IST 2025 by r29ag
