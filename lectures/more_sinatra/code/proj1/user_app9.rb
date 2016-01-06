# user_app9.rb
class UserApp < Sinatra::Application

  configure :development, :test do
    set :db, Sequel.sqlite('db/users.db')
  end

  configure :production do
    # set :db = Sequel.connect('postgres://user:password@localhost/users')
    set :db, Sequel.sqlite('db/users.db')
  end

  # ...

  post "/hello" do
    @title = "Hello Form"
    @user = User.create(:name => params[:name], :age => params[:age])
    haml :hello2, :layout => true
  end

  get "/hello_form" do
    logger = Log4r::Logger["app"]
    logger.info "Entered /hello_form route"
    @title = "Hello Stored User"
    haml :form2, :layout => true
  end
end
