# Class that computes the DNA hamming difference for 2 strands
class Hamming
  def self.compute(dna1, dna2)
    raise ArgumentError unless dna1.length == dna2.length
    0.upto(dna1.size).count { |x| (dna1[x] != dna2[x]) }
  end
end

module BookKeeping
  VERSION = 3
end
