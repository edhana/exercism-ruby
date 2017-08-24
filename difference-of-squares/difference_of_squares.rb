# calculates the diff of square_sum and sum_square of N
class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    1.upto(@number).reduce(:+)**2
  end

  def sum_of_squares
    1.upto(@number).reduce { |sum, n| sum + n**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
