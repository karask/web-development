# config7.ru
require 'bundler'

Bundler.require

require './models/users'
require './user_app7'

run UserApp.new
