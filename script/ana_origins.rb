#!/usr/bin/env ruby
require_relative '../class/xor'
require_relative '../module/data_dump'

first_convert_to_ascii  = DataDump::ANA_ORIGIN[:first_frame].split.map(&:hex).map(&:chr)
first_encrypted_hash    = XOR.new(first_convert_to_ascii.join, 23)

options = {
  force_encoding: "UTF-8",
  sub: [
    {pattern:'7', replacement:' '},
    {pattern:'9', replacement:'.'}
  ]
}

second_convert_to_ascii  = DataDump::ANA_ORIGIN[:second_frame].split.map(&:hex).map(&:chr)
second_encrypted_hash    = XOR.new(second_convert_to_ascii.join, 23)

options = {
  force_encoding: "UTF-8",
  sub: [
    {pattern:'7', replacement:' '},
    {pattern:'9', replacement:'.'}
  ]
}

printf "First Frame:
#{first_encrypted_hash.decode options}

Second Frame:
#{second_encrypted_hash.decode options}"
