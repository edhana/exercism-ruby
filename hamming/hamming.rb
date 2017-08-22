class Hamming
  def Hamming.compute(dna1, dna2)
    raise ArgumentError if dna1.nil? || dna2.nil?
    raise ArgumentError if dna1.length != dna2.length
 
    dna1_arr = dna1.split(//)
    dna2_arr = dna2.split(//)

    diffs = 0
    dna1_arr.zip(dna2_arr).each{ |a1, a2| diffs += 1 if a1 != a2 }

    return diffs
  end
end

module BookKeeping
  VERSION = 3
end


