#!/usr/bin/env ruby

# result set shown here: https://gist.github.com/kimdcottrell/40630606051d3cf518cedb8b97675e0d

require_relative '../../module/data_dump'
require_relative '../../class/rot'

rotted_mash       = Array.new
rotted_mash << DataDump::BARCODE_MASH.map do |str|
  remastered = ROT.new(str, 23)
  remastered.decode.join
end

rows = Array.new
rotted_mash.first.each do |row|
  # http://stackoverflow.com/questions/21371596/what-does-the-to-i-argument-base-actually-do
  # hexadecimal format: 0123456789ABCDEF aka base16 - so use to_i(16)
  # binary format: 01 aka base2 - so use to_s(2) to make binary and a string
  # assume that 12 or 13 is the key since there were 12 or 13 sections always
  rows << row.split("-").map{ |c_section| c_section.to_i(16).to_s(2).rjust(13, "0") }
end
rows.map!{|r| r.join}

# DEVNOTE: you will see 3 lines that are of a greater length than the others if you printf this
# printf_test = rows.join("\n")

# move the remainder of those lines to the last line
row_count = Array.new
rows.each{ |r| row_count << r.length }
row_size = row_count.each_with_object(Hash.new(0)) { |int,counts| counts[int] += 1 }

if row_size.length == 2
  min_size = row_size.min_by{|k,v| k}
  max_size = row_size.max_by{|k,v| k}

  barcode = Array.new
  barcode_remainder = Array.new
  rows.each do |row|
    barcode << row[0..min_size.first-1]
    barcode_remainder << row[min_size.first..max_size.first]
  end

  printf "#{barcode.join("\n")}\n#{barcode_remainder.join}\n\n\n^ take this value and make the 1's black and the 0's white for your QR code" # cross referenced: http://pastebin.com/yFH3115S

else
  p "ERROR: You definitely don't have a QR code since you have more than 2 lengths in your binaries at this stage"
end
