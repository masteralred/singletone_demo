require 'singleton'

class Logger
  include Singleton
  def initialize
    @file = File.open 'log.txt', 'a'
  end

  def log_something data
    @file.puts data
    @file.flush
  end
end