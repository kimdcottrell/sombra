#!/usr/bin/env ruby
require_relative '../class/bitmapper'
require_relative '../module/data_dump'
require 'Base64'

crypted = Base64.decode64(DataDump::TRACER_HASH)
unsalt = crypted[8..crypted.length-1] #remove the maybe misleading 8 Bytes 'Salted__'
puts "bitmap created as " << Bitmapper::convert(unsalt, 44, 44, "bitmap_tracer_hash.bmp")