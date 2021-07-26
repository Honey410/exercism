class Isogram  
    def initialize(input)
     @isogram = input
    end    
    def self.isogram?(input)
      Isogram.new(input).isogram?
    end    
    def isogram?
      @isogram.tr("' '-","").upcase.split('') == \
      @isogram.tr("' '-","").upcase.split('').uniq
    end
end