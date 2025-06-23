# Formal specification and testing of QUIC

## Overview

The repository includes folders with the following:

- tla_specs: contains TLA+ specifications of the QUIC protocol. You will need to install TLA+ toolbox to run.
- thesis: Contains zip of the overleaf thesis and submitted thesis along with signatures from the panel.
- tla_constants: Contains TLA+ constants of the traces obtained after running QUIC implementations.
- log_analyser: python script to convert qlog files to TLA+ constants.
- generate_mc_tla: python script to convert qlogs to MC.tla file for model checking
- cfg_files: config files to run TLA+ files.(not needed for TLA+ toolbox)
- commands: commands to execute implementations and capture logs.
- presenation: Presenations regarding the project across different evaluation stages.
- log_files: qlog files after running the implementations
- reading: Reading materials referenced.
- interop_testing: pcap files used for Wireshark testing.
