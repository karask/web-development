# user_app7.rb
class UserApp < Sinatra::Application
  # ...

  post "/hello" do
    @title = "Hello Form"
    @user = User.create(:name => params[:name], :age => params[:age])
    haml :hello2, :layout => true
  end

  get "/hello_form" do
    @title = "Hello Stored User"
    haml :form2, :layout => true
  end
end
