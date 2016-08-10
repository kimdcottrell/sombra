#!/usr/bin/env ruby

# SOLUTION TO ROUND 3 BELOW

orig = IO.read('../../asset/img/dorado_gallery_orig.jpg')
@mashed = IO.read('../../asset/img/dorado_gallery_datamashed.jpg')


#check each byte and print if it differs
index=0
orig.each_byte do |b|
    print b.chr if b != @mashed[index]
    index+=1
end
