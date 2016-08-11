require "Base64"
require "rmagick"
include Magick

class Bitmapper
  def self.convert(input_string, width, height, input_as_bytes = true, scale = 10, output_file="./dump.gif")

    if input_as_bytes
      bin = ""
      input_string.each_byte { |n| bin << "%08b" % n }
      input_string = bin
    end


    img = Image.new(width, height)
    draw = Draw.new
    draw.pointsize = 1

    x = 0
    y = 0
    input_string.each_char do |c|
      draw.point(x,y) if c == "1"
      if x < width
        x=x+1
      else
        x=0
        y+=1
      end
    end
    draw.draw(img)
    img = img.scale(scale)
    if img.write(output_file)
      return output_file
    end
    return false
  end
end
