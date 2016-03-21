class Logger
  @@x = nil

  def initialize
    @file = File.open 'log.txt', 'a'
  end

  def self.singleton
    if @@x == nil
      @@x = Logger.new
    end

    return @@x
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
Logger.singleton.log_something 'blabla'
Logger.singleton.log_something 'blabla2'

logger = Logger.new
logger.log_something 'hey!'
