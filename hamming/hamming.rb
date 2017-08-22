class Hamming
  def Hamming.compute(dna1, dna2)
    if(((dna1 && dna2) && (dna1.length == dna2.length)))
      diff = dna1.chars.zip(dna2.chars).count{ |x| (x[0]<=>x[1]).abs != 0}
      return diff
    end

    raise ArgumentError
  end
end

module BookKeeping
  VERSION = 3
end


