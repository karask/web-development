# oauth.rb
class App < Sinatra::Application

  configure do
    enable :sessions
  end

  use OmniAuth::Builder do
    provider :twitter, ENV["TWITTER_KEY"], ENV["TWITTER_PASS"]
    provider :developer
  end

  get '/' do
    haml :welcome
  end

  %w(get post).each do |method|
    send(method, "/auth/:provider/callback") do
      session['username'] = env['omniauth.auth']['info']['email']
      redirect "/"
    end
  end

  get '/auth/failure' do
    # params[:message] contains the authentication error
    # if using sinatra-flash of rack-flash use the following
    flash[:notice] = params[:message]
    redirect '/'
  end

end
