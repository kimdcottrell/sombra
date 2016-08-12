#!/usr/bin/env ruby
require_relative '../../../module/data_dump'
require_relative '../../../class/rot'
require_relative '../../../class/xor'
require 'Base64'

def caesar_cipher(string, shift = 1)
  alphabet  = Array('a'..'z')
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]

  alphabet = Array('A'..'Z')
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]

  encrypter = non_caps.merge(caps)

  string.chars.map { |c| encrypter.fetch(c, c) }
end

base64_decoded = Base64.decode64(achievements_hash)
base64_xor = XOR.new(base64_decoded.unpack('H*').join, 23)
base64_xorred = base64_xor.encode

# There's a northwest arrow next to \xCC - wut?
# base64_decoded = Base64.decode64(achievements_hash)
# => "\xB9\xCC\xE2\x86\xB8\xB0\x82\xCCh\xAF\x1C.\x9D\xA6\xABk\n\xF2\xAA\x16\xEB\xB1\xF9\x9E\xAA\xB8\xE3\x9A"
# irb(main):009:0> base64_decoded.force_encoding("UTF-8")
# => "\xB9\xCC↸\xB0\x82\xCCh\xAF\u001C.\x9D\xA6\xABk\n\xF2\xAA\u0016\xEB\xB1\xF9\x9E\xAA\xB8\xE3\x9A"

p "BASE64 DECODE: #{base64_decoded}"
p "BASE64 DECODED POSSIBLE HEX TO ASCII as => base64_decoded.scan(/\\x(..)/).map{|a| a.first.to_i(16).chr}.join: 'ArgumentError: invalid byte sequence in UTF-8'" # credit http://stackoverflow.com/questions/13547193/printing-hex-to-ascii
p "BASE64 DECODED POSSIBLE HEX WITH XOR23 ENCODE: #{base64_xorred}"
p '--------'
p "BASE64 ENCODE: #{Base64.encode64(achievements_hash)}"
p '--------'

(1..26).each do |i|
  xorred = XOR.new(achievements_hash, i)
  # rotted = ROT.new(DataDump::ACHIEVEMENTS_HASH, i)

  xorred_encoded = xorred.encode
  rotted_encoded = caesar_cipher(achievements_hash, i).join
  unrotted_decoded = caesar_cipher(achievements_hash, -i).join

  p "------"
  p "KEY #{i} ATTEMPED:"

  p "XOR ENCODE: #{xorred_encoded}"
  p "ROT ENCODE: #{rotted_encoded}"
  p "ROT DECODE: #{unrotted_decoded}"

end
