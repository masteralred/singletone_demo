# Wich logger to require (logger1 - Singleton lib ; logger2 - Manual one)
require './logger1'

# Command call for logger1.rb (need to uncomment)
Logger.instance.log 'Something1'

# Command call for logger2.rb (need to uncomment)
# Logger.create.log 'Something2'