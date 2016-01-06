#config.ru

require 'bundler'
Bundler.require

require './oauth.rb'

run App
