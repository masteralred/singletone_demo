require 'singleton'

class Logger
  include Singleton
  def initialize
    @file = File.open 'log.txt', 'a'
  end

  def log param
    @file.puts param
    @file.flush
  end
end