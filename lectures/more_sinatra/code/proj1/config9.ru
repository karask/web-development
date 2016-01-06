# config9.ru

require 'bundler'

Bundler.require

require './user_app9'
require './models/users'

logger = Log4r::Logger.new "app"
#logger.outputters << Log4r::Outputter.stdout
logger.outputters << Log4r::Outputter.stderr
log_path = "logs/" + Time.now.strftime("%Y%m%d-%H%M%S") + ".log"
logger.outputters << Log4r::FileOutputter.new('app-file', :filename => log_path)

run UserApp.new
