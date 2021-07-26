class Series
    def initialize(s)
      @seq = s.split('')
    end
    def slices(n)
      raise ArgumentError if n > @seq.size
      return @seq if n == 1 
      result = []
      seq = @seq
      while seq.size >= n do
        result.push seq.take(n).join()
        seq = seq.drop(1)
      end
      result
    end
end

