#!/usr/bin/env ruby

# SOLUTION TO ROUND 2 BELOW - credit to https://www.reddit.com/r/Overwatch/comments/4tn3vr/sombra_hint_in_new_dev_update/
require_relative '../../class/bitmapper'
require_relative '../../module/data_dump'

# DEVNOTE: people noticed there were only 12 or 13 sections - you can see that too in this var
# section_bit_count = DataDump::BARCODE_MASH.map{ |str| str.count('-') + 1}

# DEVNOTE: unpack barcode mash into hex just to see if it's possible, but for no other reason
# barcode_hex       = DataDump::BARCODE_MASH.map{ |str| str.unpack('H*')}

# credits go to blinry
lines = [""]*13
nums = DataDump::BARCODE_MASH.each do |l|
  l.split("-").each_with_index do |c,i|
    # http://stackoverflow.com/questions/21371596/what-does-the-to-i-argument-base-actually-do
    # 1. use to_i(16) to convert our barcode mash sections into hexadecimals (hexadecimal format: 0123456789ABCDEF aka base16)
    # 2. use to_s(2) to convert our Base16 string into Base2 aka binary
    # 3. assume that 12 or 13 is the key since there were 12 or 13 sections always, so pad 13 spaces over
   lines[i] += c.to_i(16).to_s(2).rjust(13, "0")
  end
end

#zero fill the last line for right-padding
lines[12] = lines[12].rjust(lines[0].length, "0")

# DEVNOTE: to see the binary at this point
printf "#{lines.join"\n"}"

# take binary and make it into a binary image which we'll later turn into a QR code
Bitmapper::convert("#{lines.join}", 116, 13, false, 20, "./asset/img/dev_blog_barcode_3_tiles_by_side.gif")

# now take the image, divide vertically by 3 and concat underneath to make the final QR code
qr = [""]*39
qr_index = 0
[0,39,77].each do |offset|
  lines.each_with_index do |l,i|
#    puts "read line[#{i}]#{offset}..#{offset+39} into qr[#{qr_index}]"
#    puts l.length
    qr[qr_index] += l[offset..offset+39]
    qr_index+=1
  end
end

Bitmapper::convert("#{qr.join}", 39, 39, false, 20, "./asset/img/dev_blog_barcodes.gif")


#printf "#{barcode.join("\n")}\n#{barcode_remainder}\n\n\n^ take this value and make the 1's black and the 0's white for your QR code" # cross referenced: http://pastebin.com/yFH3115S
