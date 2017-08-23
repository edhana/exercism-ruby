class Hamming
  def Hamming.compute(dna1, dna2)
    return 0.upto(dna1.size).count { |x| (dna1[x] != dna2[x]) } if(dna1.length == dna2.length)
    raise ArgumentError
  end
end

module BookKeeping
  VERSION = 3
end


