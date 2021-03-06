class XOR
  def initialize(str, key)
    @string = str
    @key = key
  end

  # options example: options = { force_encoding: "UTF-8", sub: [{pattern:'7', replacement:' '}, {pattern:'9', replacement:'.'}] }
  def encode options = {}
    # credit: https://gist.github.com/abhisek/1345225
    @result = @string.split(//).collect {|e| [e.unpack('C').first ^ (@key.to_i & 0xFF)].pack('C') }.join

    if options.has_key?(:sub)
      options[:sub].map{ |s| @result.gsub!(s[:pattern], s[:replacement])}
    end
    if options.has_key?(:force_encoding)
      @result.force_encoding( options[:force_encoding] )
    end

    @result
  end
end
