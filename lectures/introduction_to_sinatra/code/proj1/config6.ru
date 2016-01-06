# config6.ru
require 'sinatra'
require 'haml'
require './models/users'
require './user_app6'

run UserApp.new
