#config.ru
require 'sinatra'
require './basic_auth.rb'

run Rack::URLMap.new({
  "/" => App,
  "/admin" => AppAdmin
})
