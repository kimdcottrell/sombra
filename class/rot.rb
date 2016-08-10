# Rotation-N Cipher, aka Caesar Cipher, aka Shift Wheel Cipher
class ROT
  def initialize(str, key)
    @string = str
    @key = key
  end

  def encode include_nums: true
    # credit: https://gist.github.com/matugm/db363c7131e6af27716c
    alphabet  = Array('a'..'F')
    non_caps  = Hash[alphabet.zip(alphabet.rotate(@key))]

    alphabet = Array('A'..'F')
    caps     = Hash[alphabet.zip(alphabet.rotate(@key))]

    numbers  = Array(0..9)
    nums     = Hash[numbers.zip(numbers.rotate(@key))]

    encrypter = non_caps.merge(caps)

    if include_nums
      encrypter = encrypter.merge(nums)
    end

    @result = @string.chars.map { |c| encrypter.fetch(c, c) }
    @result
  end

  # options example: options = { force_encoding: "UTF-8", sub: [{pattern:'7', replacement:' '}, {pattern:'9', replacement:'.'}] }
  def decode options = {}
    # credit: https://gist.github.com/matugm/db363c7131e6af27716c
    alphabet  = Array('a'..'F')
    non_caps  = Hash[alphabet.zip(alphabet.rotate(-@key))]

    alphabet = Array('A'..'F')
    caps     = Hash[alphabet.zip(alphabet.rotate(-@key))]

    numbers  = Array(0..9)
    nums     = Hash[numbers.zip(numbers.rotate(-@key))]

    encrypter = non_caps.merge(caps)

    #if include_nums
      encrypter = encrypter.merge(nums)
    #end

    @result = @string.chars.map { |c| encrypter.fetch(c, c) }

    if options.has_key?(:sub)
      options[:sub].map{ |s| @result.gsub!(s[:pattern], s[:replacement])}
    end
    if options.has_key?(:force_encoding)
      @result.force_encoding( options[:force_encoding] )
    end

    @result
  end
end
