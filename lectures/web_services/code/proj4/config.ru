# config.ru
require 'bundler'

Bundler.require

require 'json'
require './todo_app'

run TodoApp.new
