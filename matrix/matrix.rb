class Matrix
    attr_reader :matrix
 
    def initialize(matrix)
      @matrix = matrix.split("\n").map {|array| array.split(" ").map { |s| s.to_i}}
    end
 
    def rows
      matrix
    end
 
    def columns
      matrix.transpose
    end
end
