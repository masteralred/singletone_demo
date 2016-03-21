class Logger
  def initialize
    @file = File.open 'log.txt', 'a'
  end

  @@x = Logger.new

  def self.singleton
    return @@x
  end

  #instance Method
  def log_something what
    @file.puts what
  end

  private_class_method :new
end