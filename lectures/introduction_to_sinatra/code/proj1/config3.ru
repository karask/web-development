# config3.ru
require 'sinatra'
require 'haml'
require './user_app3'

run UserApp.new
