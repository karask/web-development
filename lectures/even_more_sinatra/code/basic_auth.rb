# basic_auth.rb
class AppAdmin < Sinatra::Application

  use Rack::Auth::Basic, "Admin Area" do |username, password|
    username == 'foo' && password == 'bar'
  end

  get '/' do
    "admin only"
  end

  get '/another' do
    "another admin only"
  end

end

class App < Sinatra::Application
  get '/' do
    "the app"
  end
end
