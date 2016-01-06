module MyLogger
  def debug msg
    puts "#{self.class}: " + 
         "#{msg}"
  end
  def error
    # ..
  end
end
