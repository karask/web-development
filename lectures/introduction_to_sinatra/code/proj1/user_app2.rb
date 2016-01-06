# user_app2.rb
class UserApp < Sinatra::Application
  get "/hello" do
    "Hi stranger!"
  end

  post "/hello" do
    "#{params[:name]}, your age is #{params[:age]}"
  end

  get "/hello_form" do
    erb :form
  end
end
