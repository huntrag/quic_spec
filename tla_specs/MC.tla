---- MODULE MC ----
EXTENDS QLogTrace3, TLC

ConstServerTrace == 
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
    time |-> 0
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
      disable_active_migration |-> FALSE,
      active_connection_id_limit |-> 8,
      initial_source_connection_id |-> "9511dcbb0724bf5f",
      max_datagram_frame_size |-> 65536
    ],
    name |-> "transport:parameters_set",
    time |-> 0
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
    time |-> 0
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
      disable_active_migration |-> FALSE,
      active_connection_id_limit |-> 8,
      initial_source_connection_id |-> "f17cedeb9e99784e"
    ],
    name |-> "transport:parameters_set",
    time |-> 0
  ],
  [
    data |-> [
      key_type |-> "server_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 0
  ],
  [
    data |-> [
      key_type |-> "client_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 0
  ],
  [
    data |-> [
      key_type |-> "server_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 0
  ],
  [
    data |-> [
      trigger |-> "header_parse_error",
      raw |-> [
        length |-> 676
      ]
    ],
    name |-> "transport:packet_dropped",
    time |-> 0
  ],
  [
    data |-> [
      new |-> "control",
      stream_id |-> 3
    ],
    name |-> "http:stream_type_set",
    time |-> 0
  ],
  [
    data |-> [
      new |-> "qpack_encoder",
      stream_id |-> 7
    ],
    name |-> "http:stream_type_set",
    time |-> 0
  ],
  [
    data |-> [
      new |-> "qpack_decoder",
      stream_id |-> 11
    ],
    name |-> "http:stream_type_set",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 12000,
      bytes_in_flight |-> 177
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 101,
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 12000,
      bytes_in_flight |-> 1200
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 12000,
      bytes_in_flight |-> 2378
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 12000,
      bytes_in_flight |-> 2531
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
          fin |-> FALSE,
          frame_type |-> "stream",
          length |-> 19,
          offset |-> 0,
          stream_id |-> 3
        ],
        [
          fin |-> FALSE,
          frame_type |-> "stream",
          length |-> 1,
          offset |-> 0,
          stream_id |-> 7
        ],
        [
          fin |-> FALSE,
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1,
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 12177,
      bytes_in_flight |-> 2354,
      latest_rtt |-> 15,
      min_rtt |-> 15,
      smoothed_rtt |-> 15,
      rtt_variance |-> 8
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1,
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 12177,
      bytes_in_flight |-> 2354
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 13200,
      bytes_in_flight |-> 1331,
      latest_rtt |-> 15,
      min_rtt |-> 15,
      smoothed_rtt |-> 15,
      rtt_variance |-> 6
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      trigger |-> "header_parse_error",
      raw |-> [
        length |-> 1101
      ]
    ],
    name |-> "transport:packet_dropped",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 6,
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14378,
      bytes_in_flight |-> 153,
      latest_rtt |-> 21,
      min_rtt |-> 15,
      smoothed_rtt |-> 16,
      rtt_variance |-> 6
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      key_type |-> "client_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 0
  ],
  [
    data |-> [
      key_type |-> "client_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 0
  ],
  [
    data |-> [
      key_type |-> "server_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14378,
      bytes_in_flight |-> 153
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
          fin |-> FALSE,
          frame_type |-> "stream",
          length |-> 15,
          offset |-> 0,
          stream_id |-> 2
        ],
        [
          fin |-> FALSE,
          frame_type |-> "stream",
          length |-> 1,
          offset |-> 0,
          stream_id |-> 6
        ],
        [
          fin |-> FALSE,
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
    time |-> 0
  ],
  [
    data |-> [
      state |-> FALSE
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 0
  ],
  [
    data |-> [
      new |-> "control",
      stream_id |-> 2
    ],
    name |-> "http:stream_type_set",
    time |-> 0
  ],
  [
    data |-> [
      new |-> "qpack_encoder",
      stream_id |-> 6
    ],
    name |-> "http:stream_type_set",
    time |-> 0
  ],
  [
    data |-> [
      new |-> "qpack_decoder",
      stream_id |-> 10
    ],
    name |-> "http:stream_type_set",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14378,
      bytes_in_flight |-> 391
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 24,
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
          fin |-> FALSE,
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> FALSE,
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
    time |-> 0
  ],
  [
    data |-> [
      state |-> TRUE
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1,
          acked_ranges |-> <<
            <<
              3,
              3
            >>
          >>,
          frame_type |-> "ack"
        ],
        [
          fin |-> TRUE,
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
    time |-> 0
  ],
  [
    data |-> [
      state |-> TRUE
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14531,
      bytes_in_flight |-> 238,
      latest_rtt |-> 46,
      min_rtt |-> 15,
      smoothed_rtt |-> 20,
      rtt_variance |-> 12
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 16,
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
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      new |-> "push",
      stream_id |-> 15,
      associated_push_id |-> 0
    ],
    name |-> "http:stream_type_set",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14531,
      bytes_in_flight |-> 315
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> FALSE,
          frame_type |-> "stream",
          length |-> 40,
          offset |-> 0,
          stream_id |-> 0
        ],
        [
          fin |-> FALSE,
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14531,
      bytes_in_flight |-> 394
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> FALSE,
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14531,
      bytes_in_flight |-> 1594
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> FALSE,
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14531,
      bytes_in_flight |-> 1659
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> TRUE,
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 2,
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
    time |-> 0
  ],
  [
    data |-> [
      state |-> TRUE
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14769,
      bytes_in_flight |-> 1421,
      latest_rtt |-> 139,
      min_rtt |-> 15,
      smoothed_rtt |-> 35,
      rtt_variance |-> 40
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 2,
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
    time |-> 0
  ],
  [
    data |-> [
      state |-> FALSE
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14846,
      bytes_in_flight |-> 1344,
      latest_rtt |-> 215,
      min_rtt |-> 15,
      smoothed_rtt |-> 57,
      rtt_variance |-> 80
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 0,
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
    time |-> 0
  ],
  [
    data |-> [
      state |-> FALSE
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 16190,
      bytes_in_flight |-> 0,
      latest_rtt |-> 133,
      min_rtt |-> 15,
      smoothed_rtt |-> 67,
      rtt_variance |-> 89
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      state |-> FALSE
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 0
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
            value |-> "\"22197ef8e113f32ea1b96e707b76a2d9\""
          ]
        >>
      ],
      length |-> 82,
      stream_id |-> 15
    ],
    name |-> "http:frame_created",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      key_type |-> "client_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 2
  ],
  [
    data |-> [
      key_type |-> "server_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 2
  ],
  [
    data |-> [
      cwnd |-> 16190,
      bytes_in_flight |-> 0
    ],
    name |-> "recovery:metrics_updated",
    time |-> 2
  ]
>>

----

ConstClientTrace == 
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
    time |-> 0
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
      disable_active_migration |-> FALSE,
      active_connection_id_limit |-> 8,
      initial_source_connection_id |-> "9511dcbb0724bf5f",
      max_datagram_frame_size |-> 65536
    ],
    name |-> "transport:parameters_set",
    time |-> 0
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
    time |-> 0
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
      disable_active_migration |-> FALSE,
      active_connection_id_limit |-> 8,
      initial_source_connection_id |-> "f17cedeb9e99784e"
    ],
    name |-> "transport:parameters_set",
    time |-> 0
  ],
  [
    data |-> [
      key_type |-> "server_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 0
  ],
  [
    data |-> [
      key_type |-> "client_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 0
  ],
  [
    data |-> [
      key_type |-> "server_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 0
  ],
  [
    data |-> [
      trigger |-> "header_parse_error",
      raw |-> [
        length |-> 676
      ]
    ],
    name |-> "transport:packet_dropped",
    time |-> 0
  ],
  [
    data |-> [
      new |-> "control",
      stream_id |-> 3
    ],
    name |-> "http:stream_type_set",
    time |-> 0
  ],
  [
    data |-> [
      new |-> "qpack_encoder",
      stream_id |-> 7
    ],
    name |-> "http:stream_type_set",
    time |-> 0
  ],
  [
    data |-> [
      new |-> "qpack_decoder",
      stream_id |-> 11
    ],
    name |-> "http:stream_type_set",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 12000,
      bytes_in_flight |-> 177
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 101,
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 12000,
      bytes_in_flight |-> 1200
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 12000,
      bytes_in_flight |-> 2378
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 12000,
      bytes_in_flight |-> 2531
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
          fin |-> FALSE,
          frame_type |-> "stream",
          length |-> 19,
          offset |-> 0,
          stream_id |-> 3
        ],
        [
          fin |-> FALSE,
          frame_type |-> "stream",
          length |-> 1,
          offset |-> 0,
          stream_id |-> 7
        ],
        [
          fin |-> FALSE,
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1,
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 12177,
      bytes_in_flight |-> 2354,
      latest_rtt |-> 15,
      min_rtt |-> 15,
      smoothed_rtt |-> 15,
      rtt_variance |-> 8
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1,
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 12177,
      bytes_in_flight |-> 2354
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 13200,
      bytes_in_flight |-> 1331,
      latest_rtt |-> 15,
      min_rtt |-> 15,
      smoothed_rtt |-> 15,
      rtt_variance |-> 6
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      trigger |-> "header_parse_error",
      raw |-> [
        length |-> 1101
      ]
    ],
    name |-> "transport:packet_dropped",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 6,
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14378,
      bytes_in_flight |-> 153,
      latest_rtt |-> 21,
      min_rtt |-> 15,
      smoothed_rtt |-> 16,
      rtt_variance |-> 6
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      key_type |-> "client_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_updated",
    time |-> 0
  ],
  [
    data |-> [
      key_type |-> "client_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 0
  ],
  [
    data |-> [
      key_type |-> "server_handshake_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14378,
      bytes_in_flight |-> 153
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
          fin |-> FALSE,
          frame_type |-> "stream",
          length |-> 15,
          offset |-> 0,
          stream_id |-> 2
        ],
        [
          fin |-> FALSE,
          frame_type |-> "stream",
          length |-> 1,
          offset |-> 0,
          stream_id |-> 6
        ],
        [
          fin |-> FALSE,
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
    time |-> 0
  ],
  [
    data |-> [
      state |-> FALSE
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 0
  ],
  [
    data |-> [
      new |-> "control",
      stream_id |-> 2
    ],
    name |-> "http:stream_type_set",
    time |-> 0
  ],
  [
    data |-> [
      new |-> "qpack_encoder",
      stream_id |-> 6
    ],
    name |-> "http:stream_type_set",
    time |-> 0
  ],
  [
    data |-> [
      new |-> "qpack_decoder",
      stream_id |-> 10
    ],
    name |-> "http:stream_type_set",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14378,
      bytes_in_flight |-> 391
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 24,
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
          fin |-> FALSE,
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> FALSE,
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
    time |-> 0
  ],
  [
    data |-> [
      state |-> TRUE
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 1,
          acked_ranges |-> <<
            <<
              3,
              3
            >>
          >>,
          frame_type |-> "ack"
        ],
        [
          fin |-> TRUE,
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
    time |-> 0
  ],
  [
    data |-> [
      state |-> TRUE
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14531,
      bytes_in_flight |-> 238,
      latest_rtt |-> 46,
      min_rtt |-> 15,
      smoothed_rtt |-> 20,
      rtt_variance |-> 12
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 16,
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
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      new |-> "push",
      stream_id |-> 15,
      associated_push_id |-> 0
    ],
    name |-> "http:stream_type_set",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14531,
      bytes_in_flight |-> 315
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> FALSE,
          frame_type |-> "stream",
          length |-> 40,
          offset |-> 0,
          stream_id |-> 0
        ],
        [
          fin |-> FALSE,
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14531,
      bytes_in_flight |-> 394
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> FALSE,
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14531,
      bytes_in_flight |-> 1594
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> FALSE,
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
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14531,
      bytes_in_flight |-> 1659
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          fin |-> TRUE,
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 2,
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
    time |-> 0
  ],
  [
    data |-> [
      state |-> TRUE
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14769,
      bytes_in_flight |-> 1421,
      latest_rtt |-> 139,
      min_rtt |-> 15,
      smoothed_rtt |-> 35,
      rtt_variance |-> 40
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 2,
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
    time |-> 0
  ],
  [
    data |-> [
      state |-> FALSE
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 14846,
      bytes_in_flight |-> 1344,
      latest_rtt |-> 215,
      min_rtt |-> 15,
      smoothed_rtt |-> 57,
      rtt_variance |-> 80
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      frames |-> <<
        [
          ack_delay |-> 0,
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
    time |-> 0
  ],
  [
    data |-> [
      state |-> FALSE
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 0
  ],
  [
    data |-> [
      cwnd |-> 16190,
      bytes_in_flight |-> 0,
      latest_rtt |-> 133,
      min_rtt |-> 15,
      smoothed_rtt |-> 67,
      rtt_variance |-> 89
    ],
    name |-> "recovery:metrics_updated",
    time |-> 0
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
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      state |-> FALSE
    ],
    name |-> "connectivity:spin_bit_updated",
    time |-> 0
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
            value |-> "\"22197ef8e113f32ea1b96e707b76a2d9\""
          ]
        >>
      ],
      length |-> 82,
      stream_id |-> 15
    ],
    name |-> "http:frame_created",
    time |-> 0
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
    time |-> 0
  ],
  [
    data |-> [
      key_type |-> "client_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 2
  ],
  [
    data |-> [
      key_type |-> "server_1rtt_secret",
      trigger |-> "tls"
    ],
    name |-> "security:key_retired",
    time |-> 2
  ],
  [
    data |-> [
      cwnd |-> 16190,
      bytes_in_flight |-> 0
    ],
    name |-> "recovery:metrics_updated",
    time |-> 2
  ]
>>

----

=============================================================================
