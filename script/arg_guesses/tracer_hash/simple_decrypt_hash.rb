#!/usr/bin/env ruby
require_relative '../../../module/data_dump'
require_relative '../../../class/rot'
require_relative '../../../class/xor'
require 'Base64'

# test_xor = XOR.new("hello world 123", 23)
# p "XOR23 ENCODED: #{test_xor.encode}"
# encoded_xor = XOR.new(test_xor, 23)
# p "XOR23 ENCODED: #{encoded_xor.decode}"

rotten_mash = Array.new
(0..25).each do |i|
  rot_pos = ROT.new(DataDump::TRACER_HASH, i)
  rot_neg = ROT.new(DataDump::TRACER_HASH, -i)
  xor_hash = XOR.new(DataDump::TRACER_HASH, i)

  p "START #{i}-------------"

  p "ROT#{i} DECODED"
  p Base64.decode64( rot_pos.decode.join )

  p "ROT-#{i} DECODED"
  p Base64.decode64( rot_neg.decode.join )

  p "ROT#{i} ENCODED"
  p Base64.decode64( rot_pos.encode.join )

  p "ROT-#{i} ENCODED"
  p Base64.decode64( rot_neg.encode.join )

  p "XOR#{i} ENCODED"
  p Base64.decode64( xor_hash.encode )

  p "END #{i}-------------"
end
