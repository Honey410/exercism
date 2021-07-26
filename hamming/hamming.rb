
class Hamming
    def self.compute(s1, s2)
      raise ArgumentError if s1.length != s2.length
  
      dna_strand1 = s1.split("")
      dna_strand2 = s2.split("")
      
      dna_strand1.each_with_index.reduce(0) do |sum, (v, i)|
        sum += 1 if v != dna_strand2[i]
        sum
      end
    end
end

