require 'sinatra'

configure do
  enable :sessions
end

get "/set" do
  session[:user] = "Kostas"
  "User set in session..."
end

get "/get" do
  "User is: #{session[:user]}"
end
