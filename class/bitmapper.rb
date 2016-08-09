require "Base64"
require "rmagick"
include Magick

class Bitmapper
  def self.convert(input_string, output_file="../assets/dump.gif")
    bin = ""
    input_string.each_byte { |n| bin << "%08b" % n }
    size = Math.sqrt(bin.length).to_i
    img = Image.new(size, size)
    draw = Draw.new
    draw.pointsize = 1
    (0..size).each do |x|
      (0..size).each do |y|
        draw.point(x,y) if bin[x*size+y] == "1"
      end
    end
    draw.draw(img)
    if img.write(output_file)
      return output_file
    end
    return false
  end
end
