# user_app5.rb
class UserApp < Sinatra::Application
  # ...

  post "/hello" do
    @user = User.create(:name => params[:name], :age => params[:age])
    haml :hello
  end

  get "/hello_form" do
    haml :form
  end
end
