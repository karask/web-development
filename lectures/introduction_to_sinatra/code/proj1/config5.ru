# config5.ru
require 'sinatra'
require 'haml'
require './models/users'
require './user_app5'

run UserApp.new
