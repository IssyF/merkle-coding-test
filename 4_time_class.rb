class Time
  def initialize(hours, minutes, seconds)
    @hours = hours
    @minutes = minutes
    @seconds = seconds
    normalise_time
  end

  def normalise_time
    # If seconds are greater than 59, convert to minutes
    if @seconds > 59
      @minutes += @seconds / 60
      @seconds = @seconds % 60
    end
    # If minutes are greater than 59, convert to hours
    if @minutes > 59
      @hours += @minutes / 60
      @minutes = @minutes % 60
    end
    # If hours are greater than 23, scale down
    if @hours > 23
      @hours = @hours % 24
    end
  end

  def scale(seconds)
    @seconds += seconds
    normalise_time
  end

  # Use this method in the time_string method to format the hours, minutes and seconds with two digits each
  def format_time_element(time_element)
    if time_element < 10
      return "0#{time_element}"
    else
      return time_element
    end
  end

  def time_string
    return "#{format_time_element(@hours)}:#{format_time_element(@minutes)}:#{format_time_element(@seconds)}"
  end
end
