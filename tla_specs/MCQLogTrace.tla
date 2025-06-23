---- MODULE MCQLogTrace ----
EXTENDS QLogTrace, TLC

const_17506475996352000 == 
<<
  [
    data |-> [
      new |-> "control",
      stream_id |-> 2
    ],
    name |-> "http:stream_type_set",
    time |-> 17456723950212814
  ],
  [
    data |-> [
      new |-> "qpack_encoder",
      stream_id |-> 6
    ],
    name |-> "http:stream_type_set",
    time |-> 17456723950213338
  ],
  [
    data |-> [
      new |-> "qpack_decoder",
      stream_id |-> 10
    ],
    name |-> "http:stream_type_set",
    time |-> 17456723950213718
  ],
  [
    data |-> [
      client_versions |-> <<
        1,
        1798521807
      >>,
      chosen_version |-> 1
    ],
    name |-> "transport:version_information",
    time |-> 17456723950215972
  ],
  [
    data |-> [
      client_alpns |-> <<
        "h3"
      >>
    ],
    name |-> "transport:alpn_information",
    time |-> 17456723950216066
  ],
  [
    data |-> [
      owner |-> "local",
      max_idle_timeout |-> 60000,
      initial_max_data |-> 1048576,
      initial_max_stream_data_bidi_local |-> 1048576,
      initial_max_stream_data_bidi_remote |-> 1048576,
      initial_max_stream_data_uni |-> 1048576,
      initial_max_streams_bidi |-> 128,
      initial_max_streams_uni |-> 128,
      ack_delay_exponent |-> 3,
      max_ack_delay |-> 25,
      disable_active_migration |-> False,
      active_connection_id_limit |-> 8,
      initial_source_connection_id |-> "f17cedeb9e99784e"
    ],
    name |-> "transport:parameters_set",
    time |-> 17456723950252908
  ],
  [
    data |-> [
      cwnd |-> 12000,
      bytes_in_flight |-> 524
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723950372728
  ],
  [
    data |-> [
      frames |-> <<
        [
          frame_type |-> "crypto",
          length |-> 476,
          offset |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 0,
        packet_type |-> "initial",
        scid |-> "f17cedeb9e99784e",
        dcid |-> "fcabe9223fe7d8c1"
      ],
      raw |-> [
        length |-> 524
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723950372922
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 1208,
          payload_length |-> 1200
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723950373046
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 1208,
          payload_length |-> 1200
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723952230080
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 100.872,
          acked_ranges |-> <<
            <<
              0,
              0
            >>
          >>,
          frame_type |-> "ack"
        ],
        [
          frame_type |-> "crypto",
          length |-> 123,
          offset |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 0,
        packet_type |-> "initial",
        dcid |-> "f17cedeb9e99784e",
        scid |-> "9511dcbb0724bf5f"
      ],
      raw |-> [
        length |-> 177
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723952230984
  ],
  [
    data |-> [
      cwnd |-> 12524,
      bytes_in_flight |-> 0,
      latest_rtt |-> 185.8619720005663,
      min_rtt |-> 185.8619720005663,
      smoothed_rtt |-> 185.8619720005663,
      rtt_variance |-> 92.93098600028316
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952232012
  ],
  [
    data |-> [
      key_type |-> "server_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 17456723952238854
  ],
  [
    data |-> [
      frames |-> <<
        [
          frame_type |-> "crypto",
          length |-> 976,
          offset |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 1,
        packet_type |-> "handshake",
        dcid |-> "f17cedeb9e99784e",
        scid |-> "9511dcbb0724bf5f"
      ],
      raw |-> [
        length |-> 1023
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723952239476
  ],
  [
    data |-> [
      owner |-> "remote",
      original_destination_connection_id |-> "fcabe9223fe7d8c1",
      max_idle_timeout |-> 60000,
      stateless_reset_token |-> "312a1ed2cf2de2ad02e6d03ea6180202",
      initial_max_data |-> 1048576,
      initial_max_stream_data_bidi_local |-> 1048576,
      initial_max_stream_data_bidi_remote |-> 1048576,
      initial_max_stream_data_uni |-> 1048576,
      initial_max_streams_bidi |-> 128,
      initial_max_streams_uni |-> 128,
      ack_delay_exponent |-> 3,
      max_ack_delay |-> 25,
      disable_active_migration |-> False,
      active_connection_id_limit |-> 8,
      initial_source_connection_id |-> "9511dcbb0724bf5f",
      max_datagram_frame_size |-> 65536
    ],
    name |-> "transport:parameters_set",
    time |-> 17456723952240266
  ],
  [
    data |-> [
      key_type |-> "client_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 17456723952242698
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1.3245879999885801,
          acked_ranges |-> <<
            <<
              0,
              0
            >>
          >>,
          frame_type |-> "ack"
        ]
      >>,
      header |-> [
        packet_number |-> 1,
        packet_type |-> "initial",
        scid |-> "f17cedeb9e99784e",
        dcid |-> "9511dcbb0724bf5f"
      ],
      raw |-> [
        length |-> 50
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723952244912
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1.3245879999885801,
          acked_ranges |-> <<
            <<
              1,
              1
            >>
          >>,
          frame_type |-> "ack"
        ]
      >>,
      header |-> [
        packet_number |-> 2,
        packet_type |-> "handshake",
        scid |-> "f17cedeb9e99784e",
        dcid |-> "9511dcbb0724bf5f"
      ],
      raw |-> [
        length |-> 49
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723952245048
  ],
  [
    data |-> [
      cwnd |-> 12524,
      bytes_in_flight |-> 0
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952245344
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 1208,
          payload_length |-> 1200
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723952245468
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 1186,
          payload_length |-> 1178
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723952248182
  ],
  [
    data |-> [
      frames |-> <<
        [
          frame_type |-> "crypto",
          length |-> 1130,
          offset |-> 976
        ]
      >>,
      header |-> [
        packet_number |-> 2,
        packet_type |-> "handshake",
        dcid |-> "f17cedeb9e99784e",
        scid |-> "9511dcbb0724bf5f"
      ],
      raw |-> [
        length |-> 1178
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723952248514
  ],
  [
    data |-> [
      key_type |-> "server_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 17456723952304832
  ],
  [
    data |-> [
      key_type |-> "client_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 17456723952306570
  ],
  [
    data |-> [
      cwnd |-> 12524,
      bytes_in_flight |-> 105
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952313250
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 6.224646000191569,
          acked_ranges |-> <<
            <<
              1,
              2
            >>
          >>,
          frame_type |-> "ack"
        ],
        [
          frame_type |-> "crypto",
          length |-> 52,
          offset |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 3,
        packet_type |-> "handshake",
        scid |-> "f17cedeb9e99784e",
        dcid |-> "9511dcbb0724bf5f"
      ],
      raw |-> [
        length |-> 105
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723952313386
  ],
  [
    data |-> [
      cwnd |-> 12524,
      bytes_in_flight |-> 357
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952313508
  ],
  [
    data |-> [
      frames |-> <<
        [
          connection_id |-> "857b5e6746720f56",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "75d204f00afa97e42643f99c6b5e1d6a",
          retire_prior_to |-> 0,
          sequence_number |-> 1
        ],
        [
          connection_id |-> "c5abc63af0909ad5",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "dc37e9606149cc0846605177be571f7d",
          retire_prior_to |-> 0,
          sequence_number |-> 2
        ],
        [
          connection_id |-> "926473409dd14b1c",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "fe494a0068757b55c5ec433f0908128c",
          retire_prior_to |-> 0,
          sequence_number |-> 3
        ],
        [
          connection_id |-> "0be4979ef65b139f",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "8c1f5cc37f22a700ccf731559e5c00cc",
          retire_prior_to |-> 0,
          sequence_number |-> 4
        ],
        [
          connection_id |-> "d42007224d1345b3",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "4eee9126c92c46da43ffbfbe00a39cf1",
          retire_prior_to |-> 0,
          sequence_number |-> 5
        ],
        [
          connection_id |-> "f1edf9d1aee22852",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "820a5733af84218a979f7dcb57691c6c",
          retire_prior_to |-> 0,
          sequence_number |-> 6
        ],
        [
          connection_id |-> "77cc6f748bab62ac",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "1e875326d6ce3bb9483ac1bcf57270e5",
          retire_prior_to |-> 0,
          sequence_number |-> 7
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 15,
          offset |-> 0,
          stream_id |-> 2
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 1,
          offset |-> 0,
          stream_id |-> 6
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 1,
          offset |-> 0,
          stream_id |-> 10
        ]
      >>,
      header |-> [
        packet_number |-> 4,
        packet_type |-> "1RTT",
        scid |-> "",
        dcid |-> "9511dcbb0724bf5f"
      ],
      raw |-> [
        length |-> 252
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723952313624
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 365,
          payload_length |-> 357
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723952313740
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 161,
          payload_length |-> 153
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723952316198
  ],
  [
    data |-> [
      frames |-> <<
        [
          frame_type |-> "crypto",
          length |-> 89,
          offset |-> 0
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 19,
          offset |-> 0,
          stream_id |-> 3
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 1,
          offset |-> 0,
          stream_id |-> 7
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 1,
          offset |-> 0,
          stream_id |-> 11
        ]
      >>,
      header |-> [
        packet_number |-> 3,
        packet_type |-> "1RTT",
        dcid |-> "f17cedeb9e99784e",
        scid |-> ""
      ],
      raw |-> [
        length |-> 153
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723952316526
  ],
  [
    data |-> [
      state |-> True
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 17456723952316652
  ],
  [
    data |-> [
      new |-> "control",
      stream_id |-> 3
    ],
    name |-> "http:stream_type_set",
    time |-> 17456723952322316
  ],
  [
    data |-> [
      new |-> "qpack_encoder",
      stream_id |-> 7
    ],
    name |-> "http:stream_type_set",
    time |-> 17456723952322746
  ],
  [
    data |-> [
      new |-> "qpack_decoder",
      stream_id |-> 11
    ],
    name |-> "http:stream_type_set",
    time |-> 17456723952322998
  ],
  [
    data |-> [
      cwnd |-> 12524,
      bytes_in_flight |-> 392
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952323994
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 3,
          offset |-> 1,
          stream_id |-> 6
        ]
      >>,
      header |-> [
        packet_number |-> 5,
        packet_type |-> "1RTT",
        scid |-> "",
        dcid |-> "9511dcbb0724bf5f"
      ],
      raw |-> [
        length |-> 35
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723952324250
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 43,
          payload_length |-> 35
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723952324346
  ],
  [
    data |-> [
      frame |-> [
        frame_type |-> "headers",
        headers |-> <<
          [
            name |-> ":method",
            value |-> "GET"
          ],
          [
            name |-> ":scheme",
            value |-> "https"
          ],
          [
            name |-> ":authority",
            value |-> "localhost:4433"
          ],
          [
            name |-> ":path",
            value |-> "/"
          ],
          [
            name |-> "user-agent",
            value |-> "aioquic/1.2.0"
          ]
        >>
      ],
      length |-> 29,
      stream_id |-> 0
    ],
    name |-> "http:frame_created",
    time |-> 17456723952327122
  ],
  [
    data |-> [
      cwnd |-> 12524,
      bytes_in_flight |-> 460
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952328560
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1.1481900000944734,
          acked_ranges |-> <<
            <<
              3,
              3
            >>
          >>,
          frame_type |-> "ack"
        ],
        [
          fin |-> True,
          frame_type |-> "stream",
          length |-> 31,
          offset |-> 0,
          stream_id |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 6,
        packet_type |-> "1RTT",
        scid |-> "",
        dcid |-> "9511dcbb0724bf5f"
      ],
      raw |-> [
        length |-> 68
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723952328686
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 76,
          payload_length |-> 68
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723952328784
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 246,
          payload_length |-> 238
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723952596502
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 23.504,
          acked_ranges |-> <<
            <<
              4,
              4
            >>
          >>,
          frame_type |-> "ack"
        ],
        [
          frame_type |-> "handshake_done"
        ],
        [
          connection_id |-> "223519b57fdd88cd",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "f81fd86f596cec4bf46de78f18d90f9e",
          retire_prior_to |-> 0,
          sequence_number |-> 1
        ],
        [
          connection_id |-> "e7eb73e3f7777451",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "67ff1b3de1705a312c888b2053e4566d",
          retire_prior_to |-> 0,
          sequence_number |-> 2
        ],
        [
          connection_id |-> "201aa89fd9cfd3a5",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "4ed4a710b6510c9907168c738d57cf0b",
          retire_prior_to |-> 0,
          sequence_number |-> 3
        ],
        [
          connection_id |-> "0c08d49adf65c49f",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "b14d78951c50fd698fd4d119cbc2f76e",
          retire_prior_to |-> 0,
          sequence_number |-> 4
        ],
        [
          connection_id |-> "6d37a7288fa90a86",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "8ac61c5ca97265e94d625f8c18b0115c",
          retire_prior_to |-> 0,
          sequence_number |-> 5
        ],
        [
          connection_id |-> "98102bb3aa004d0b",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "44c36b7dcc76e5279d35d790ceb79637",
          retire_prior_to |-> 0,
          sequence_number |-> 6
        ],
        [
          connection_id |-> "b01bc4b20a0013d0",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "da11e0c55bfd59840f841f063399e4a0",
          retire_prior_to |-> 0,
          sequence_number |-> 7
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 3,
          offset |-> 1,
          stream_id |-> 7
        ]
      >>,
      header |-> [
        packet_number |-> 4,
        packet_type |-> "1RTT",
        dcid |-> "f17cedeb9e99784e",
        scid |-> ""
      ],
      raw |-> [
        length |-> 238
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723952597158
  ],
  [
    data |-> [
      state |-> True
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 17456723952597286
  ],
  [
    data |-> [
      cwnd |-> 12776,
      bytes_in_flight |-> 208,
      latest_rtt |-> 28.603550001207623,
      min_rtt |-> 28.603550001207623,
      smoothed_rtt |-> 166.20466925064648,
      rtt_variance |-> 69.69823950021237
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952598100
  ],
  [
    data |-> [
      key_type |-> "server_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 17456723952598372
  ],
  [
    data |-> [
      key_type |-> "client_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 17456723952598498
  ],
  [
    data |-> [
      cwnd |-> 12776,
      bytes_in_flight |-> 103
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952598674
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1.6462849998788442,
          acked_ranges |-> <<
            <<
              3,
              4
            >>
          >>,
          frame_type |-> "ack"
        ]
      >>,
      header |-> [
        packet_number |-> 7,
        packet_type |-> "1RTT",
        scid |-> "",
        dcid |-> "9511dcbb0724bf5f"
      ],
      raw |-> [
        length |-> 33
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723952613576
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 41,
          payload_length |-> 33
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723952613686
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 41,
          payload_length |-> 33
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723952779514
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 15.736,
          acked_ranges |-> <<
            <<
              4,
              6
            >>
          >>,
          frame_type |-> "ack"
        ]
      >>,
      header |-> [
        packet_number |-> 5,
        packet_type |-> "1RTT",
        dcid |-> "f17cedeb9e99784e",
        scid |-> ""
      ],
      raw |-> [
        length |-> 33
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723952780688
  ],
  [
    data |-> [
      state |-> False
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 17456723952781036
  ],
  [
    data |-> [
      cwnd |-> 12879,
      bytes_in_flight |-> 0,
      latest_rtt |-> 29.438004000728018,
      min_rtt |-> 28.603550001207623,
      smoothed_rtt |-> 149.10883609440668,
      rtt_variance |-> 52.48229312503938
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952782288
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 85,
          payload_length |-> 77
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723953070564
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 40,
          offset |-> 0,
          stream_id |-> 0
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 2,
          offset |-> 0,
          stream_id |-> 15
        ]
      >>,
      header |-> [
        packet_number |-> 6,
        packet_type |-> "1RTT",
        dcid |-> "f17cedeb9e99784e",
        scid |-> ""
      ],
      raw |-> [
        length |-> 77
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723953071102
  ],
  [
    data |-> [
      state |-> False
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 17456723953071242
  ],
  [
    data |-> [
      frame |-> [
        frame_type |-> "push_promise",
        headers |-> <<
          [
            name |-> ":method",
            value |-> "GET"
          ],
          [
            name |-> ":scheme",
            value |-> "https"
          ],
          [
            name |-> ":authority",
            value |-> "localhost:4433"
          ],
          [
            name |-> ":path",
            value |-> "/style.css"
          ],
          [
            name |-> "user-agent",
            value |-> "aioquic/1.2.0"
          ]
        >>,
        push_id |-> 0
      ],
      length |-> 38,
      stream_id |-> 0
    ],
    name |-> "http:frame_parsed",
    time |-> 17456723953074058
  ],
  [
    data |-> [
      new |-> "push",
      stream_id |-> 15,
      associated_push_id |-> 0
    ],
    name |-> "http:stream_type_set",
    time |-> 17456723953074390
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1.6824859994812869,
          acked_ranges |-> <<
            <<
              4,
              6
            >>
          >>,
          frame_type |-> "ack"
        ]
      >>,
      header |-> [
        packet_number |-> 8,
        packet_type |-> "1RTT",
        scid |-> "",
        dcid |-> "9511dcbb0724bf5f"
      ],
      raw |-> [
        length |-> 33
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723953089206
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 41,
          payload_length |-> 33
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723953089314
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 87,
          payload_length |-> 79
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723953971594
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 47,
          offset |-> 40,
          stream_id |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 7,
        packet_type |-> "1RTT",
        dcid |-> "f17cedeb9e99784e",
        scid |-> ""
      ],
      raw |-> [
        length |-> 79
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723953972226
  ],
  [
    data |-> [
      state |-> False
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 17456723953972374
  ],
  [
    data |-> [
      frame |-> [
        frame_type |-> "headers",
        headers |-> <<
          [
            name |-> ":status",
            value |-> "200"
          ],
          [
            name |-> "server",
            value |-> "aioquic/1.2.0"
          ],
          [
            name |-> "date",
            value |-> "Sat, 26 Apr 2025 12:59:55 GMT"
          ],
          [
            name |-> "content-length",
            value |-> "1196"
          ],
          [
            name |-> "content-type",
            value |-> "text/html; charset=utf-8"
          ]
        >>
      ],
      length |-> 45,
      stream_id |-> 0
    ],
    name |-> "http:frame_parsed",
    time |-> 17456723953973642
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 1208,
          payload_length |-> 1200
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723953979550
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 1167,
          offset |-> 87,
          stream_id |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 8,
        packet_type |-> "1RTT",
        dcid |-> "f17cedeb9e99784e",
        scid |-> ""
      ],
      raw |-> [
        length |-> 1200
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723953979904
  ],
  [
    data |-> [
      state |-> False
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 17456723953980042
  ],
  [
    data |-> [
      frame |-> [
        frame_type |-> "data"
      ],
      length |-> 1196,
      stream_id |-> 0
    ],
    name |-> "http:frame_parsed",
    time |-> 17456723953980472
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 73,
          payload_length |-> 65
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723953983392
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> True,
          frame_type |-> "stream",
          length |-> 32,
          offset |-> 1254,
          stream_id |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 9,
        packet_type |-> "1RTT",
        dcid |-> "f17cedeb9e99784e",
        scid |-> ""
      ],
      raw |-> [
        length |-> 65
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723953983662
  ],
  [
    data |-> [
      state |-> False
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 17456723953983884
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 0.12929900003655348,
          acked_ranges |-> <<
            <<
              4,
              9
            >>
          >>,
          frame_type |-> "ack"
        ]
      >>,
      header |-> [
        packet_number |-> 9,
        packet_type |-> "1RTT",
        scid |-> "",
        dcid |-> "9511dcbb0724bf5f"
      ],
      raw |-> [
        length |-> 32
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723953985170
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 40,
          payload_length |-> 32
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723953985278
  ],
  [
    data |-> [
      frames |-> <<
        [
          error_code |-> 256,
          error_space |-> "application",
          frame_type |-> "connection_close",
          raw_error_code |-> 256,
          reason |-> ""
        ]
      >>,
      header |-> [
        packet_number |-> 10,
        packet_type |-> "1RTT",
        scid |-> "",
        dcid |-> "9511dcbb0724bf5f"
      ],
      raw |-> [
        length |-> 31
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723953992360
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 39,
          payload_length |-> 31
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723953992468
  ],
  [
    data |-> [
      key_type |-> "server_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 17456723965537264
  ],
  [
    data |-> [
      key_type |-> "client_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 17456723965537408
  ],
  [
    data |-> [
      cwnd |-> 12879,
      bytes_in_flight |-> 0
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723965537712
  ]
>>
----
const_17506475996353000 == 
<<
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 1208,
          payload_length |-> 1200
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723951157584
  ],
  [
    data |-> [
      owner |-> "local",
      original_destination_connection_id |-> "fcabe9223fe7d8c1",
      max_idle_timeout |-> 60000,
      stateless_reset_token |-> "312a1ed2cf2de2ad02e6d03ea6180202",
      initial_max_data |-> 1048576,
      initial_max_stream_data_bidi_local |-> 1048576,
      initial_max_stream_data_bidi_remote |-> 1048576,
      initial_max_stream_data_uni |-> 1048576,
      initial_max_streams_bidi |-> 128,
      initial_max_streams_uni |-> 128,
      ack_delay_exponent |-> 3,
      max_ack_delay |-> 25,
      disable_active_migration |-> False,
      active_connection_id_limit |-> 8,
      initial_source_connection_id |-> "9511dcbb0724bf5f",
      max_datagram_frame_size |-> 65536
    ],
    name |-> "transport:parameters_set",
    time |-> 17456723951375954
  ],
  [
    data |-> [
      frames |-> <<
        [
          frame_type |-> "crypto",
          length |-> 476,
          offset |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 0,
        packet_type |-> "initial",
        dcid |-> "fcabe9223fe7d8c1",
        scid |-> "f17cedeb9e99784e"
      ],
      raw |-> [
        length |-> 524
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723951597234
  ],
  [
    data |-> [
      owner |-> "remote",
      max_idle_timeout |-> 60000,
      initial_max_data |-> 1048576,
      initial_max_stream_data_bidi_local |-> 1048576,
      initial_max_stream_data_bidi_remote |-> 1048576,
      initial_max_stream_data_uni |-> 1048576,
      initial_max_streams_bidi |-> 128,
      initial_max_streams_uni |-> 128,
      ack_delay_exponent |-> 3,
      max_ack_delay |-> 25,
      disable_active_migration |-> False,
      active_connection_id_limit |-> 8,
      initial_source_connection_id |-> "f17cedeb9e99784e"
    ],
    name |-> "transport:parameters_set",
    time |-> 17456723951693724
  ],
  [
    data |-> [
      key_type |-> "server_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 17456723951910566
  ],
  [
    data |-> [
      key_type |-> "client_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 17456723951911756
  ],
  [
    data |-> [
      key_type |-> "server_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 17456723952034340
  ],
  [
    data |-> [
      trigger |-> "header_parse_error",
      raw |-> [
        length |-> 676
      ]
    ],
    name |-> "transport:packet_dropped",
    time |-> 17456723952073714
  ],
  [
    data |-> [
      new |-> "control",
      stream_id |-> 3
    ],
    name |-> "http:stream_type_set",
    time |-> 17456723952120218
  ],
  [
    data |-> [
      new |-> "qpack_encoder",
      stream_id |-> 7
    ],
    name |-> "http:stream_type_set",
    time |-> 17456723952139292
  ],
  [
    data |-> [
      new |-> "qpack_decoder",
      stream_id |-> 11
    ],
    name |-> "http:stream_type_set",
    time |-> 17456723952139524
  ],
  [
    data |-> [
      cwnd |-> 12000,
      bytes_in_flight |-> 177
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952198596
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 100.87861700048961,
          acked_ranges |-> <<
            <<
              0,
              0
            >>
          >>,
          frame_type |-> "ack"
        ],
        [
          frame_type |-> "crypto",
          length |-> 123,
          offset |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 0,
        packet_type |-> "initial",
        scid |-> "9511dcbb0724bf5f",
        dcid |-> "f17cedeb9e99784e"
      ],
      raw |-> [
        length |-> 177
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723952198890
  ],
  [
    data |-> [
      cwnd |-> 12000,
      bytes_in_flight |-> 1200
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952199008
  ],
  [
    data |-> [
      frames |-> <<
        [
          frame_type |-> "crypto",
          length |-> 976,
          offset |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 1,
        packet_type |-> "handshake",
        scid |-> "9511dcbb0724bf5f",
        dcid |-> "f17cedeb9e99784e"
      ],
      raw |-> [
        length |-> 1023
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723952203484
  ],
  [
    data |-> [
      cwnd |-> 12000,
      bytes_in_flight |-> 2378
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952203608
  ],
  [
    data |-> [
      frames |-> <<
        [
          frame_type |-> "crypto",
          length |-> 1130,
          offset |-> 976
        ]
      >>,
      header |-> [
        packet_number |-> 2,
        packet_type |-> "handshake",
        scid |-> "9511dcbb0724bf5f",
        dcid |-> "f17cedeb9e99784e"
      ],
      raw |-> [
        length |-> 1178
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723952203830
  ],
  [
    data |-> [
      cwnd |-> 12000,
      bytes_in_flight |-> 2531
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952203956
  ],
  [
    data |-> [
      frames |-> <<
        [
          frame_type |-> "crypto",
          length |-> 89,
          offset |-> 0
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 19,
          offset |-> 0,
          stream_id |-> 3
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 1,
          offset |-> 0,
          stream_id |-> 7
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 1,
          offset |-> 0,
          stream_id |-> 11
        ]
      >>,
      header |-> [
        packet_number |-> 3,
        packet_type |-> "1RTT",
        scid |-> "",
        dcid |-> "f17cedeb9e99784e"
      ],
      raw |-> [
        length |-> 153
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723952204064
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 1208,
          payload_length |-> 1200
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723952204546
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 1186,
          payload_length |-> 1178
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723952204848
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 161,
          payload_length |-> 153
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723952204946
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 1208,
          payload_length |-> 1200
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723952291420
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1.32,
          acked_ranges |-> <<
            <<
              0,
              0
            >>
          >>,
          frame_type |-> "ack"
        ]
      >>,
      header |-> [
        packet_number |-> 1,
        packet_type |-> "initial",
        dcid |-> "9511dcbb0724bf5f",
        scid |-> "f17cedeb9e99784e"
      ],
      raw |-> [
        length |-> 50
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723952291858
  ],
  [
    data |-> [
      cwnd |-> 12177,
      bytes_in_flight |-> 2354,
      latest_rtt |-> 15.09816799989494,
      min_rtt |-> 15.09816799989494,
      smoothed_rtt |-> 15.09816799989494,
      rtt_variance |-> 7.54908399994747
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952298442
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1.32,
          acked_ranges |-> <<
            <<
              1,
              1
            >>
          >>,
          frame_type |-> "ack"
        ]
      >>,
      header |-> [
        packet_number |-> 2,
        packet_type |-> "handshake",
        dcid |-> "9511dcbb0724bf5f",
        scid |-> "f17cedeb9e99784e"
      ],
      raw |-> [
        length |-> 49
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723952298890
  ],
  [
    data |-> [
      cwnd |-> 12177,
      bytes_in_flight |-> 2354
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952307846
  ],
  [
    data |-> [
      cwnd |-> 13200,
      bytes_in_flight |-> 1331,
      latest_rtt |-> 15.09816799989494,
      min_rtt |-> 15.09816799989494,
      smoothed_rtt |-> 15.09816799989494,
      rtt_variance |-> 5.661812999960603
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952308376
  ],
  [
    data |-> [
      trigger |-> "header_parse_error",
      raw |-> [
        length |-> 1101
      ]
    ],
    name |-> "transport:packet_dropped",
    time |-> 17456723952308660
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 365,
          payload_length |-> 357
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723952351658
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 6.224,
          acked_ranges |-> <<
            <<
              1,
              2
            >>
          >>,
          frame_type |-> "ack"
        ],
        [
          frame_type |-> "crypto",
          length |-> 52,
          offset |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 3,
        packet_type |-> "handshake",
        dcid |-> "9511dcbb0724bf5f",
        scid |-> "f17cedeb9e99784e"
      ],
      raw |-> [
        length |-> 105
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723952352080
  ],
  [
    data |-> [
      cwnd |-> 14378,
      bytes_in_flight |-> 153,
      latest_rtt |-> 21.106214999235817,
      min_rtt |-> 15.09816799989494,
      smoothed_rtt |-> 15.84917387481255,
      rtt_variance |-> 5.748371499805671
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952504350
  ],
  [
    data |-> [
      key_type |-> "client_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 17456723952506044
  ],
  [
    data |-> [
      key_type |-> "client_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 17456723952506362
  ],
  [
    data |-> [
      key_type |-> "server_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 17456723952506478
  ],
  [
    data |-> [
      cwnd |-> 14378,
      bytes_in_flight |-> 153
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952506644
  ],
  [
    data |-> [
      frames |-> <<
        [
          connection_id |-> "857b5e6746720f56",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "75d204f00afa97e42643f99c6b5e1d6a",
          retire_prior_to |-> 0,
          sequence_number |-> 1
        ],
        [
          connection_id |-> "c5abc63af0909ad5",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "dc37e9606149cc0846605177be571f7d",
          retire_prior_to |-> 0,
          sequence_number |-> 2
        ],
        [
          connection_id |-> "926473409dd14b1c",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "fe494a0068757b55c5ec433f0908128c",
          retire_prior_to |-> 0,
          sequence_number |-> 3
        ],
        [
          connection_id |-> "0be4979ef65b139f",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "8c1f5cc37f22a700ccf731559e5c00cc",
          retire_prior_to |-> 0,
          sequence_number |-> 4
        ],
        [
          connection_id |-> "d42007224d1345b3",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "4eee9126c92c46da43ffbfbe00a39cf1",
          retire_prior_to |-> 0,
          sequence_number |-> 5
        ],
        [
          connection_id |-> "f1edf9d1aee22852",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "820a5733af84218a979f7dcb57691c6c",
          retire_prior_to |-> 0,
          sequence_number |-> 6
        ],
        [
          connection_id |-> "77cc6f748bab62ac",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "1e875326d6ce3bb9483ac1bcf57270e5",
          retire_prior_to |-> 0,
          sequence_number |-> 7
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 15,
          offset |-> 0,
          stream_id |-> 2
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 1,
          offset |-> 0,
          stream_id |-> 6
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 1,
          offset |-> 0,
          stream_id |-> 10
        ]
      >>,
      header |-> [
        packet_number |-> 4,
        packet_type |-> "1RTT",
        dcid |-> "9511dcbb0724bf5f",
        scid |-> ""
      ],
      raw |-> [
        length |-> 252
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723952519980
  ],
  [
    data |-> [
      state |-> False
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 17456723952523974
  ],
  [
    data |-> [
      new |-> "control",
      stream_id |-> 2
    ],
    name |-> "http:stream_type_set",
    time |-> 17456723952558794
  ],
  [
    data |-> [
      new |-> "qpack_encoder",
      stream_id |-> 6
    ],
    name |-> "http:stream_type_set",
    time |-> 17456723952579842
  ],
  [
    data |-> [
      new |-> "qpack_decoder",
      stream_id |-> 10
    ],
    name |-> "http:stream_type_set",
    time |-> 17456723952580114
  ],
  [
    data |-> [
      cwnd |-> 14378,
      bytes_in_flight |-> 391
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952594240
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 23.506294000981143,
          acked_ranges |-> <<
            <<
              4,
              4
            >>
          >>,
          frame_type |-> "ack"
        ],
        [
          frame_type |-> "handshake_done"
        ],
        [
          connection_id |-> "223519b57fdd88cd",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "f81fd86f596cec4bf46de78f18d90f9e",
          retire_prior_to |-> 0,
          sequence_number |-> 1
        ],
        [
          connection_id |-> "e7eb73e3f7777451",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "67ff1b3de1705a312c888b2053e4566d",
          retire_prior_to |-> 0,
          sequence_number |-> 2
        ],
        [
          connection_id |-> "201aa89fd9cfd3a5",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "4ed4a710b6510c9907168c738d57cf0b",
          retire_prior_to |-> 0,
          sequence_number |-> 3
        ],
        [
          connection_id |-> "0c08d49adf65c49f",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "b14d78951c50fd698fd4d119cbc2f76e",
          retire_prior_to |-> 0,
          sequence_number |-> 4
        ],
        [
          connection_id |-> "6d37a7288fa90a86",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "8ac61c5ca97265e94d625f8c18b0115c",
          retire_prior_to |-> 0,
          sequence_number |-> 5
        ],
        [
          connection_id |-> "98102bb3aa004d0b",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "44c36b7dcc76e5279d35d790ceb79637",
          retire_prior_to |-> 0,
          sequence_number |-> 6
        ],
        [
          connection_id |-> "b01bc4b20a0013d0",
          frame_type |-> "new_connection_id",
          length |-> 8,
          reset_token |-> "da11e0c55bfd59840f841f063399e4a0",
          retire_prior_to |-> 0,
          sequence_number |-> 7
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 3,
          offset |-> 1,
          stream_id |-> 7
        ]
      >>,
      header |-> [
        packet_number |-> 4,
        packet_type |-> "1RTT",
        scid |-> "",
        dcid |-> "f17cedeb9e99784e"
      ],
      raw |-> [
        length |-> 238
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723952594380
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 246,
          payload_length |-> 238
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723952594484
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 43,
          payload_length |-> 35
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723952609620
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 3,
          offset |-> 1,
          stream_id |-> 6
        ]
      >>,
      header |-> [
        packet_number |-> 5,
        packet_type |-> "1RTT",
        dcid |-> "9511dcbb0724bf5f",
        scid |-> ""
      ],
      raw |-> [
        length |-> 35
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723952610030
  ],
  [
    data |-> [
      state |-> True
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 17456723952610136
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 76,
          payload_length |-> 68
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723952615928
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1.1440000000000001,
          acked_ranges |-> <<
            <<
              3,
              3
            >>
          >>,
          frame_type |-> "ack"
        ],
        [
          fin |-> True,
          frame_type |-> "stream",
          length |-> 31,
          offset |-> 0,
          stream_id |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 6,
        packet_type |-> "1RTT",
        dcid |-> "9511dcbb0724bf5f",
        scid |-> ""
      ],
      raw |-> [
        length |-> 68
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723952616218
  ],
  [
    data |-> [
      state |-> True
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 17456723952616334
  ],
  [
    data |-> [
      cwnd |-> 14531,
      bytes_in_flight |-> 238,
      latest_rtt |-> 46.40748399999598,
      min_rtt |-> 15.09816799989494,
      smoothed_rtt |-> 19.668962640460478,
      rtt_variance |-> 12.138607624879514
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723952616890
  ],
  [
    data |-> [
      frame |-> [
        frame_type |-> "headers",
        headers |-> <<
          [
            name |-> ":method",
            value |-> "GET"
          ],
          [
            name |-> ":scheme",
            value |-> "https"
          ],
          [
            name |-> ":authority",
            value |-> "localhost:4433"
          ],
          [
            name |-> ":path",
            value |-> "/"
          ],
          [
            name |-> "user-agent",
            value |-> "aioquic/1.2.0"
          ]
        >>
      ],
      length |-> 29,
      stream_id |-> 0
    ],
    name |-> "http:frame_parsed",
    time |-> 17456723952644516
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 15.737661999082775,
          acked_ranges |-> <<
            <<
              4,
              6
            >>
          >>,
          frame_type |-> "ack"
        ]
      >>,
      header |-> [
        packet_number |-> 5,
        packet_type |-> "1RTT",
        scid |-> "",
        dcid |-> "f17cedeb9e99784e"
      ],
      raw |-> [
        length |-> 33
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723952775888
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 41,
          payload_length |-> 33
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723952776298
  ],
  [
    data |-> [
      new |-> "push",
      stream_id |-> 15,
      associated_push_id |-> 0
    ],
    name |-> "http:stream_type_set",
    time |-> 17456723953063462
  ],
  [
    data |-> [
      cwnd |-> 14531,
      bytes_in_flight |-> 315
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723953067700
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 40,
          offset |-> 0,
          stream_id |-> 0
        ],
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 2,
          offset |-> 0,
          stream_id |-> 15
        ]
      >>,
      header |-> [
        packet_number |-> 6,
        packet_type |-> "1RTT",
        scid |-> "",
        dcid |-> "f17cedeb9e99784e"
      ],
      raw |-> [
        length |-> 77
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723953067862
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 85,
          payload_length |-> 77
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723953067968
  ],
  [
    data |-> [
      frame |-> [
        frame_type |-> "headers",
        headers |-> <<
          [
            name |-> ":status",
            value |-> "200"
          ],
          [
            name |-> "server",
            value |-> "aioquic/1.2.0"
          ],
          [
            name |-> "date",
            value |-> "Sat, 26 Apr 2025 12:59:55 GMT"
          ],
          [
            name |-> "content-length",
            value |-> "1196"
          ],
          [
            name |-> "content-type",
            value |-> "text/html; charset=utf-8"
          ]
        >>
      ],
      length |-> 45,
      stream_id |-> 0
    ],
    name |-> "http:frame_created",
    time |-> 17456723953967752
  ],
  [
    data |-> [
      cwnd |-> 14531,
      bytes_in_flight |-> 394
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723953969012
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 47,
          offset |-> 40,
          stream_id |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 7,
        packet_type |-> "1RTT",
        scid |-> "",
        dcid |-> "f17cedeb9e99784e"
      ],
      raw |-> [
        length |-> 79
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723953969172
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 87,
          payload_length |-> 79
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723953969274
  ],
  [
    data |-> [
      frame |-> [
        frame_type |-> "data"
      ],
      length |-> 1196,
      stream_id |-> 0
    ],
    name |-> "http:frame_created",
    time |-> 17456723953975786
  ],
  [
    data |-> [
      cwnd |-> 14531,
      bytes_in_flight |-> 1594
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723953977226
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> False,
          frame_type |-> "stream",
          length |-> 1167,
          offset |-> 87,
          stream_id |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 8,
        packet_type |-> "1RTT",
        scid |-> "",
        dcid |-> "f17cedeb9e99784e"
      ],
      raw |-> [
        length |-> 1200
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723953977478
  ],
  [
    data |-> [
      cwnd |-> 14531,
      bytes_in_flight |-> 1659
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723953977580
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> True,
          frame_type |-> "stream",
          length |-> 32,
          offset |-> 1254,
          stream_id |-> 0
        ]
      >>,
      header |-> [
        packet_number |-> 9,
        packet_type |-> "1RTT",
        scid |-> "",
        dcid |-> "f17cedeb9e99784e"
      ],
      raw |-> [
        length |-> 65
      ]
    ],
    name |-> "transport:packet_sent",
    time |-> 17456723953977688
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 1208,
          payload_length |-> 1200
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723953977786
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 73,
          payload_length |-> 65
        ]
      >>
    ],
    name |-> "transport:datagrams_sent",
    time |-> 17456723953977872
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 41,
          payload_length |-> 33
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723953995178
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1.64,
          acked_ranges |-> <<
            <<
              3,
              4
            >>
          >>,
          frame_type |-> "ack"
        ]
      >>,
      header |-> [
        packet_number |-> 7,
        packet_type |-> "1RTT",
        dcid |-> "9511dcbb0724bf5f",
        scid |-> ""
      ],
      raw |-> [
        length |-> 33
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723953995494
  ],
  [
    data |-> [
      state |-> True
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 17456723953995608
  ],
  [
    data |-> [
      cwnd |-> 14769,
      bytes_in_flight |-> 1421,
      latest_rtt |-> 139.2240669997112,
      min_rtt |-> 15.09816799989494,
      smoothed_rtt |-> 34.61335068536682,
      rtt_variance |-> 40.135430468613706
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723953996530
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 41,
          payload_length |-> 33
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723955237400
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1.6800000000000002,
          acked_ranges |-> <<
            <<
              4,
              6
            >>
          >>,
          frame_type |-> "ack"
        ]
      >>,
      header |-> [
        packet_number |-> 8,
        packet_type |-> "1RTT",
        dcid |-> "9511dcbb0724bf5f",
        scid |-> ""
      ],
      raw |-> [
        length |-> 33
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723955238120
  ],
  [
    data |-> [
      state |-> False
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 17456723955238252
  ],
  [
    data |-> [
      cwnd |-> 14846,
      bytes_in_flight |-> 1344,
      latest_rtt |-> 215.378399999587,
      min_rtt |-> 15.09816799989494,
      smoothed_rtt |-> 57.208981849644346,
      rtt_variance |-> 80.17163085138328
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723955239516
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 40,
          payload_length |-> 32
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723955303222
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 0.128,
          acked_ranges |-> <<
            <<
              4,
              9
            >>
          >>,
          frame_type |-> "ack"
        ]
      >>,
      header |-> [
        packet_number |-> 9,
        packet_type |-> "1RTT",
        dcid |-> "9511dcbb0724bf5f",
        scid |-> ""
      ],
      raw |-> [
        length |-> 32
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723955304224
  ],
  [
    data |-> [
      state |-> False
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 17456723955304392
  ],
  [
    data |-> [
      cwnd |-> 16190,
      bytes_in_flight |-> 0,
      latest_rtt |-> 132.54803900021642,
      min_rtt |-> 15.09816799989494,
      smoothed_rtt |-> 66.62636399346586,
      rtt_variance |-> 89.49119088861785
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723955305424
  ],
  [
    data |-> [
      count |-> 1,
      raw |-> <<
        [
          length |-> 39,
          payload_length |-> 31
        ]
      >>
    ],
    name |-> "transport:datagrams_received",
    time |-> 17456723955363540
  ],
  [
    data |-> [
      frames |-> <<
        [
          error_code |-> 256,
          error_space |-> "application",
          frame_type |-> "connection_close",
          raw_error_code |-> 256,
          reason |-> ""
        ]
      >>,
      header |-> [
        packet_number |-> 10,
        packet_type |-> "1RTT",
        dcid |-> "9511dcbb0724bf5f",
        scid |-> ""
      ],
      raw |-> [
        length |-> 31
      ]
    ],
    name |-> "transport:packet_received",
    time |-> 17456723955364078
  ],
  [
    data |-> [
      state |-> False
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 17456723955364206
  ],
  [
    data |-> [
      frame |-> [
        frame_type |-> "headers",
        headers |-> <<
          [
            name |-> ":status",
            value |-> "200"
          ],
          [
            name |-> "server",
            value |-> "aioquic/1.2.0"
          ],
          [
            name |-> "date",
            value |-> "Sat, 26 Apr 2025 12:59:55 GMT"
          ],
          [
            name |-> "content-type",
            value |-> "text/css; charset=utf-8"
          ],
          [
            name |-> "accept-ranges",
            value |-> "bytes"
          ],
          [
            name |-> "content-length",
            value |-> "136"
          ],
          [
            name |-> "last-modified",
            value |-> "Sun, 06 Apr 2025 13:52:21 GMT"
          ],
          [
            name |-> "etag",
            value |-> ""22197ef8e113f32ea1b96e707b76a2d9""
          ]
        >>
      ],
      length |-> 82,
      stream_id |-> 15
    ],
    name |-> "http:frame_created",
    time |-> 17456723955942314
  ],
  [
    data |-> [
      frame |-> [
        frame_type |-> "data"
      ],
      length |-> 136,
      stream_id |-> 15
    ],
    name |-> "http:frame_created",
    time |-> 17456723955978960
  ],
  [
    data |-> [
      key_type |-> "client_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 17456723968889542
  ],
  [
    data |-> [
      key_type |-> "server_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 17456723968890232
  ],
  [
    data |-> [
      cwnd |-> 16190,
      bytes_in_flight |-> 0
    ],
    name |-> "recovery:metrics_updated",
    time |-> 17456723968891164
  ]
>>
----
====