# config4.ru
require 'sinatra'
require 'haml'
require './models/users'
require './user_app4'

run UserApp.new
