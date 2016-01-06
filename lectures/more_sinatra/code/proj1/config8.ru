# config8.ru
#
# Notice, require './user_app8' is now before models

require 'bundler'

Bundler.require

require './user_app8'
require './models/users'

run UserApp.new
