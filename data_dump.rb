module DataDump
  # the tracer hash as it was seen in the video. this includes \n to denote the newlines.
  TRACER_HASH_NEWLINES = "U2FsdGVkX1+vupppZksvRf5pq5g5XjFRlipRkwB0K1Y96Qsv2L\nm+31cmzaAILwytX/z66ZVWEQM/ccf1g+9m5Ubu1+sit+A9cenD\nxxqklaxbm4cMeh2oKhqlHhdaBKOi6XX2XDWpa6+P5o9MQw=="

  # the tracer hash without the newlines
  TRACER_HASH = "U2FsdGVkX1+vupppZksvRf5pq5g5XjFRlipRkwB0K1Y96Qsv2Lm+31cmzaAILwytX/z66ZVWEQM/ccf1g+9m5Ubu1+sit+A9cenDxxqklaxbm4cMeh2oKhqlHhdaBKOi6XX2XDWpa6+P5o9MQw=="

  ANA_ORIGIN = {
    # On July 12, 2016, a video for the new Overwatch hero named Ana was released. By pausing the video at the 2:11 time mark, a bunch of hexadecimal numbers were discovered:
    first_frame:
      "65 76 2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E D4 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E 04 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E 04 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E 04 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E",
    # A second frame of hexadecimal numbers was discovered at the 1:16 time mark of the video:
    second_frame:
      "65 76 2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E D4 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E 04 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E 04 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E 04 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E"
  }

  # All of the Numani Flight billboard data
  FLIGHT_LIST = [
    {
      time: '20:00',
      origin: 'SEOUL',
      flight_abbr: 'HG',
      flight_num: '0614',
      remarks: 'ON TIME',
      is_blizzard: true,
      current_map: false
    },
    {
      time: '21:30',
      origin: 'MOSCOW',
      flight_abbr: 'ES',
      flight_num: '4R41',
      remarks: 'CANCELED',
      is_blizzard: false,
      current_map: false
    },
    {
      time: '22:15',
      origin: 'CORK',
      flight_abbr: 'BF',
      flight_num: '3264',
      remarks: 'ON TIME',
      is_blizzard: true,
      current_map: false
    },
    {
      time: '22:55',
      origin: 'HONG KONG',
      flight_abbr: 'HA',
      flight_num: '3252',
      remarks: 'ON TIME',
      is_blizzard: false,
      current_map: false
    },
    {
      time: '24:00',
      origin: 'BUENOS AIRES',
      flight_abbr: 'OL',
      flight_num: '7215',
      remarks: 'ON TIME',
      is_blizzard: false,
      current_map: false
    },
    {
      time: '1:05',
      origin: 'ROME',
      flight_abbr: 'VW',
      flight_num: 'A353',
      remarks: 'ON TIME',
      is_blizzard: false,
      current_map: false
    },
    {
      time: '1:20',
      origin: 'MADRID',
      flight_abbr: 'CQ',
      flight_num: '4142',
      remarks: 'ON TIME',
      is_blizzard: false,
      current_map: false
    },
    {
      time: '2:25',
      origin: 'PARIS',
      flight_abbr: 'SJ',
      flight_num: '5863',
      remarks: 'ON TIME',
      is_blizzard: false,
      current_map: false
    },
    {
      time: '2:35',
      origin: 'HANAMURA',
      flight_abbr: 'KU',
      flight_num: '4352',
      remarks: 'ON TIME',
      is_blizzard: false,
      current_map: true
    },
    {
      time: '2:55',
      origin: 'DELHI',
      flight_abbr: 'PO',
      flight_num: '2567',
      remarks: 'ON TIME',
      is_blizzard: false,
      current_map: false
    },
    {
      time: '3:00',
      origin: 'SHANGHAI',
      flight_abbr: 'RG',
      flight_num: '2554',
      remarks: 'ON TIME',
      is_blizzard: true,
      current_map: false
    },
    {
      time: '3:55',
      origin: 'FRANKFURT',
      flight_abbr: 'JG',
      flight_num: '2564',
      remarks: 'CANCELED',
      is_blizzard: false,
      current_map: false
    },
    {
      time: '4:00',
      origin: 'SINGAPORE',
      flight_abbr: 'GR',
      flight_num: '0254',
      remarks: 'ON TIME',
      is_blizzard: true,
      current_map: false
    },
    {
      time: '4:20',
      origin: 'AUSTIN',
      flight_abbr: 'TE',
      flight_num: '1331',
      remarks: 'CANCELED',
      is_blizzard: true,
      current_map: false
    },
    {
      time: '4:10',
      origin: 'DORADO',
      flight_abbr: 'SX',
      flight_num: '0126',
      remarks: 'ON TIME',
      is_blizzard: false,
      current_map: true
    },
    {
      time: '4:45',
      origin: 'NEW YORK',
      flight_abbr: 'EE',
      flight_num: '2342',
      remarks: 'ON TIME',
      is_blizzard: false,
      current_map: false
    },
    {
      time: '5:00',
      origin: 'SAN FRANCISCO',
      flight_abbr: 'UT',
      flight_num: '2543',
      remarks: 'ON TIME',
      is_blizzard: false,
      current_map: false
    },
    {
      time: '5:20',
      origin: 'TAIPEI',
      flight_abbr: 'KE',
      flight_num: '7145',
      remarks: 'ON TIME',
      is_blizzard: true,
      current_map: false
    },
    {
      time: '5:35',
      origin: 'JOHANNESBURG',
      flight_abbr: 'DQ',
      flight_num: '1276',
      remarks: 'ON TIME',
      is_blizzard: false,
      current_map: false
    },
    {
      time: '5:55',
      origin: 'SYDNEY',
      flight_abbr: 'AH',
      flight_num: '8343',
      remarks: 'ON TIME',
      is_blizzard: true,
      current_map: false
    },
    {
      time: '6:30',
      origin: "KING'S ROW",
      flight_abbr: 'CK',
      flight_num: '1117',
      remarks: 'ON TIME',
      is_blizzard: false,
      current_map: true
    },
    {
      time: '6:40',
      origin: 'VERSAILLES',
      flight_abbr: 'GR',
      flight_num: '3337',
      remarks: 'ON TIME',
      is_blizzard: true,
      current_map: false
    },
    {
      time: '6:55',
      origin: 'LOS ANGELES',
      flight_abbr: 'AT',
      flight_num: '3245',
      remarks: 'ON TIME',
      is_blizzard: false,
      current_map: false
    },
    {
      time: '7:20',
      origin: 'IRVINE',
      flight_abbr: 'BJ',
      flight_num: '3567',
      remarks: 'DELAYED',
      is_blizzard: true,
      current_map: false
    }
  ]

end
