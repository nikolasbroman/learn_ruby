class Timer
  
  def initialize
    @total_seconds = 0
  end

  def seconds
    @total_seconds
  end

  def seconds=(s)
    @total_seconds = s
  end

  def time_string
    @seconds = 0
    @minutes = 0
    @hours = 0
    
    if (@total_seconds < 59)
      @seconds = @total_seconds
    else
      @minutes = @total_seconds / 60
      @seconds = @total_seconds - @minutes * 60
      if (@minutes > 59)
        @hours = @minutes / 60
        @minutes = @minutes - @hours * 60
      end
    end

    sprintf("%02d:%02d:%02d", @hours, @minutes, @seconds)
  end

end
