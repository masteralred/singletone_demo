class Logger
  private_class_method :new

  def initialize
    @file = File.open 'log.txt', 'a'
  end

  @@object = nil
 
  def self.create
    @@object ||= new 
  end
 
  def log param
    @file.puts param
    @file.flush
  end
end