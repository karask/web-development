require 'sinatra'

class MyApp < Sinatra::Application
  get "/" do                     # localhost:4567/
    redirect to('/hello')
  end

  get "/hello" do                # localhost:4567/hello
    "Hi stranger!"
  end

  get "/hello/:name" do |name|   # localhost:4567/hello/Kostas 
    "Hello #{name}"
  end

  get "/download/*.*" do |path, ext|   # ..4567/download/file.xml
    [path, ext]  # => ["file", "xml"]
  end

  get %r{/hi/([\w]+)} do |c|
    "Hi #{c}"
  end
end

MyApp.run!
