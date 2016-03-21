class Logger
  def self.say_something
    puts "haha"
  end

  def self.log_something what
    file = File.open 'log.txt', 'a'
    file.puts what
    file.close
  end
end

Logger.say_something
Logger.log_something 'wazzup'
