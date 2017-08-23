class Complement
  PARSER = {"G" => "C", "C" => "G", "T" => "A", "A" => "U"}

  def Complement.of_dna strand
    if (strand.chars.all? { |c| "CGTA".chars.include? c })
      return strand.gsub(/[GCTA]/, PARSER)
    end

    ''
  end
end

module BookKeeping
  VERSION=4
end


