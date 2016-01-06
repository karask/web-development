# config.ru
require 'bundler'

Bundler.require

require './models/posts'
require './models/comments'
require './tblog'

run BlogApp.new
