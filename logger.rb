class Logger
  def initialize
    @file = File.open 'log.txt', 'a'
  end

  @@x = Logger.new

  def self.singleton
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

  private_class_method :new
end