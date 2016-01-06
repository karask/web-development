# user_app3.rb
class UserApp < Sinatra::Application
  get "/hello" do
    "Hi stranger!"
  end

  post "/hello" do
    "#{params[:name]}, your age is #{params[:age]}"
  end

  get "/hello_form" do
    haml :form
  end
end
