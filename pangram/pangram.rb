class Pangram
  def self.pangram?(phrase)
    missing_letters = ('a'..'z').to_a - phrase.downcase.chars
    missing_letters.empty?
  end
end
module BookKeeping
  VERSION = 6
end
