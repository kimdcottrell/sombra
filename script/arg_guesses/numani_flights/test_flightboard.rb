#!/usr/bin/env ruby
require_relative '../../../module/data_dump'

DataDump::FLIGHT_LIST.each do |fl|
  abbr = fl[:flight_abbr]
  num = fl[:flight_num]

  time_raw = fl[:time]
  time = time_raw.split(":")
  time[0].rjust(2,'0')
  time[1].rjust(2,'0')

##XOR num by zerofilled time
  print (num[0].to_i ^ time[0].to_i).chr
  print (num[1].to_i ^ time[1].to_i).chr
  print (num[2].to_i ^ time[2].to_i).chr
  print (num[3].to_i ^ time[3].to_i).chr

##XOR abbr by num
#  print (abbr[0].hex ^ num[0..1].to_i).chr
#  print (abbr[1].hex ^ num[2..3].to_i).chr

##XOR num by abbr
#  print (num[0..1].to_i ^ abbr[0].hex).chr
#  print (num[2..3].to_i ^ abbr[1].hex).chr


end
