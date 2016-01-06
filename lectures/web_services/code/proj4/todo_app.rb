# encoding: utf-8
class TodoApp < Sinatra::Application

  configure do
    set :server, :thin
  end

  helpers do
    include Rack::Utils
    alias_method :h, :escape_html
  end

  before do
    content_type 'application/json'
  end
end

require_relative 'models/init'
require_relative 'routes/init'
