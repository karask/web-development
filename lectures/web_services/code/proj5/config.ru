# config.ru
require 'sinatra'
require 'rack/ssl'
require './app'

run App.new
