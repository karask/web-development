# user_app4.rb
class UserApp < Sinatra::Application
  # ...

  post "/hello" do
    user = User.create(:name => params[:name], :age => params[:age])
    "#{user.name}, your age is #{user.age}"
  end

  get "/hello_form" do
    haml :form
  end
end
