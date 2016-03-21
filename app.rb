class Logger
  def initialize
    @file = File.open 'log.txt', 'a'
  end

  # class Method
  def self.say_something
    puts "haha"
  end

  #instance Method
  def log_something what
    @file.puts what
  end
end

Logger.say_something
logger = Logger.new
logger.log_something 'wazzup'
