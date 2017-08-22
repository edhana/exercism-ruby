class Gigasecond
  def Gigasecond.from(time)
    raise ArgumentError unless time.is_a? Time
    time + (10**9)
  end
end

module BookKeeping
  VERSION = 6
end
