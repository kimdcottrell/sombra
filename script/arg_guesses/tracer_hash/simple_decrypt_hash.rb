#!/usr/bin/env ruby
require_relative '../../../module/data_dump'
require_relative '../../../class/rot'
require_relative '../../../class/xor'
require 'Base64'

# this is all kind of silly now that I've read more about how encryptions work...

rotten_mash = Array.new
(0..25).each do |i|
  base64_decoded = Base64.decode64(DataDump::TRACER_HASH)
  rot_pos = ROT.new(base64_decoded, i)
  rot_neg = ROT.new(base64_decoded, -i)
  xor_hash = XOR.new(base64_decoded, i)

  p "START #{i}-------------"

  p "ROT#{i} DECODED"
  p rot_pos.decode.join

  p "ROT-#{i} DECODED"
  p rot_neg.decode.join

  p "ROT#{i} ENCODED"
  p rot_pos.encode.join

  p "ROT-#{i} ENCODED"
  p rot_neg.encode.join

  p "XOR#{i} ENCODED"
  p xor_hash.encode

  p "END #{i}-------------"
end
