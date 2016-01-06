# my_app2.rb
require 'rubygems' if RUBY_VERSION < "1.9"
require 'sinatra'

class MyApp < Sinatra::Application
  get '/' do
    "Hi stranger!"
  end
end

MyApp.run!
