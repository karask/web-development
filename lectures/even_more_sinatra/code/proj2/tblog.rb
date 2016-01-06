# encoding: utf-8
class BlogApp < Sinatra::Application

  configure do
    set :server, :thin
  end

  helpers do
    include Rack::Utils
    alias_method :h, :escape_html
  end

end

require_relative 'models/init'
require_relative 'helpers/init'
require_relative 'routes/init'
