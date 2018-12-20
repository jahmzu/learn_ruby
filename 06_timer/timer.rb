class Timer
  #write your code here
  attr_accessor :seconds
  
  def initialize
     @seconds = 0;
  end
  
  def time_string
     hours = (@seconds / 60) / 60
     minutes = (@seconds / 60) % 60
     secondss = @seconds % 60
     
     secondss < 10 ? secondss = secondss.to_s.prepend("0") : secondss = secondss.to_s
     minutes < 10 ? minutes = minutes.to_s.prepend("0") : minutes = minutes.to_s
     hours < 10 ? hours = hours.to_s.prepend("0") : hours = hours.to_s
     
     return "#{hours}:#{minutes}:#{secondss}"
     
  end
end
