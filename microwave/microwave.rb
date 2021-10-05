class Microwave
  def initialize(input)
    @input = input
  end
  def timer
    minutes, seconds = @input.divmod 100
    minute_overflow, seconds = seconds.divmod 60
    "%02d:%02d" % [minutes + minute_overflow, seconds]
  end
end
