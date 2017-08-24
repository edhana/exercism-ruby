# this class has methods to calculate factors of a number to create a dialect
class Raindrops
  DICT = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }.freeze

  def self.convert(number)
    factors = (1..number).chunk { |e|
      (number % e).zero? && (DICT.keys.include? e)
    }.select { |ary|
      ary[0] == true
    }.flat_map { |m| [m[1][0]] }

    phrase = ''
    factors.each { |f| phrase += DICT[f] }
    return phrase unless phrase.empty?

    number.to_s
  end
end

module BookKeeping
  VERSION = 3
end
