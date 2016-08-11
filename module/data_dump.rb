module DataDump
  # the tracer hash as it was seen in the video. this includes \n to denote the newlines.
  TRACER_HASH_NEWLINES = "U2FsdGVkX1+vupppZksvRf5pq5g5XjFRlipRkwB0K1Y96Qsv2L\nm+31cmzaAILwytX/z66ZVWEQM/ccf1g+9m5Ubu1+sit+A9cenD\nxxqklaxbm4cMeh2oKhqlHhdaBKOi6XX2XDWpa6+P5o9MQw=="

  # the tracer hash without the newlines
  TRACER_HASH = "U2FsdGVkX1+vupppZksvRf5pq5g5XjFRlipRkwB0K1Y96Qsv2Lm+31cmzaAILwytX/z66ZVWEQM/ccf1g+9m5Ubu1+sit+A9cenDxxqklaxbm4cMeh2oKhqlHhdaBKOi6XX2XDWpa6+P5o9MQw=="

  ACHIEVEMENTS_FULL_TRANSLATED_MESSAGE = "Nice, not bad at all. However, I'm getting bored. Let's try something in the same direction. uczihriwgsxorxwunaarawryqhbrsfmeqrjjmu 5552E494 78T3 4VM9 OPL6 IS8208O913KRlrx"

  ACHIEVEMENTS_HASH = "uczihriwgsxorxwunaarawryqhbrsfmeqrjjmu 5552E494 78T3 4VM9 OPL6 IS8208O913KRlrx"

  ANA_ORIGIN = {
    # On July 12, 2016, a video for the new Overwatch hero named Ana was released. By pausing the video at the 2:11 time mark, a bunch of hexadecimal numbers were discovered:
    first_frame:
      "65 76 2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E D4 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E D4 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E D4 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E D4 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E",
    # A second frame of hexadecimal numbers was discovered at the 1:16 time mark of the video:
    second_frame:
      "2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E D4 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E D4 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E D4 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E 7B 76 20 66 62 72 20 63 7E 72 79 72 20 7B 76 20 7E 79 71 78 65 7A 76 74 7E D4 A4 79 2C 20 63 7E 72 79 72 20 72 7B 20 67 78 73 72 65 2E 2E 2E 64 78 7A 75"
  }

  # in the dev update video, there were a series of barcodes. this is what the barcodes (http://i.imgur.com/t7oWXB0.png) became when parsed through a Code-128 Barcode reader (https://www.reddit.com/r/Overwatch/comments/4tn3vr/sombra_hint_in_new_dev_update/)
  # NOTES: corrected so that it fits what http://www.onlinebarcodereader.com/ actually read, which included newlines (https://zapu.net/sombra.txt) which were not considered readable characters by the script on that site, but it did correctly parse them to 0a in hexadecimal
  BARCODE_MASH = [
    "FEC-820-BA9-BAD-BAF-824-FEA-5-F28-980-5B0-F59",
    "4B1-2C7-F83-748-7F4-719-AAA-2C8-1F6-47C-5A8-DBA\n",
    "7F-1541-85D-E5D-35D-1C41-157F-500-49D-122-11D8-D9C\n",
    "279-919-4AA-800-1E9-308-3F1-EDC-CB3-602-DE9-8",
    "153-690-BF0-CA1-2B-D03-9C8-866-DF7-EF9-C21-20\n",
    "1FD7-1F79-1582-1252-806-1B4B-1FB7-1050-532-9A9-1870-1FEF",
    "3A0-A43-AFF-793-658-C-FE4-821-BA4-BA8-BAA-82F-FED\n", # BA4-BA8-BAA QR code markers; the difference between 4, 8, A in an allowed character set of 0123456789ABCDEF- is 2 for each individual section
    "B6A-BD4-496-324-A2F-3C3-78E-723-634-B9-287-EFA-172\n",
    "1B5E-17F9-83D-160-1BFE-1D14-956-318-5F1-6D7-1BC-C24-18CF\n"
  ]

  # in the summer games video, mercy and tracer both have flashing lights that are readable as binary; widowmaker has flashing lights, but they don't mean jack
  FLASHING_LIGHTS = {
    mercy: [
      "00001000",
      "01000000"
    ],
    tracer: [
      "00010000",
      "01100000"
    ]
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
