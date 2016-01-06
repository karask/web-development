require "sinatra"
require "rack/test"

require_relative "../my_app.rb"

set :environment, :test

describe MyApp do
  include Rack::Test::Methods
  def app
    MyApp
  end

  describe "First simple test with Sinatra" do
    it "says hello world" do
      get "/"

      last_response.status.should == 200
      last_response.body.should =~ /Hello World/
    end
  end
end
