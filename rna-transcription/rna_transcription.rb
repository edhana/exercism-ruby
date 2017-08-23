class Complement
  def Complement.of_dna strand
    parser = {"G" => "C", "C" => "G", "T" => "A", "A" => "U"}
    return strand.gsub(/[GCTA]/, parser) if strand && (strand.chars.all? { |c| "CGTA".chars.include? c })

    return ''
  end
end

module BookKeeping
  VERSION=4
end


