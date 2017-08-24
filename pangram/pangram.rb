# simple pangram verifier class
class Pangram
  ALPHABET = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z].freeze

  def self.pangram?(phrase)
    phr = phrase.downcase
    ALPHABET.all? { |l| phr.chars.include? l }
  end
end

module BookKeeping
  VERSION = 4
end
