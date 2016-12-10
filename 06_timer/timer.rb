class Timer
  #write your code here
  attr_accessor :seconds
  
  def initialize
     @seconds = 0
  end
  
  def seconds= num
     @seconds = num
  end
  
  def time_string (time=@seconds)
     hours = time / 3600
     minutes = (time % 3600) / 60
     sec = (time % 3600) % 60
     
     timer(hours) + ":" + timer(minutes) + ":" + timer(sec)
  end
  
  def timer num
      if num.to_s.length == 1
          "0" + num.to_s
      else
          num.to_s
      end
  end
  
end
