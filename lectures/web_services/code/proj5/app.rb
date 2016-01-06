# encoding: utf-8
class App < Sinatra::Application
  use Rack::SSL

  get '/' do
    # request.secure? returns true if SSL
    "secure"
  end

end
