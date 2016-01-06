# config.ru
require 'sinatra'
require './user_app'

run UserApp.new
