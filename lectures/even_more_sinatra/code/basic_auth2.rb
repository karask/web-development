# basic_auth2.rb
class App < Sinatra::Application

  before '/admin/*' do
    protected!
  end

  helpers do
    def protected!
      unless authorized?
        throw(:halt, [401, "Login incorrect\n"])
      end
    end

    def authorized?
      response['WWW-Authenticate'] = %(Basic realm="Admins only")
      @auth ||=  Rack::Auth::Basic::Request.new(request.env)
      @auth.provided? && @auth.basic?  && @auth.credentials && @auth.credentials == ['admin', 'admin']
    end
  end
    

  get '/' do
    "the app"
  end

  get '/admin' do
    "admin only"
  end

  get '/admin/another' do
    "another admin only"
  end

end
