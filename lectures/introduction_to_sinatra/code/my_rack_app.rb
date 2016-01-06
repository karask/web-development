require 'rack'

class MyApp
  def call(env)
    [ 200, 
      {'Content-Type' => 'text/plain'},
      ['Hello from Rack!']
    ]
  end
end

Rack::Handler::WEBrick.run(MyApp.new, {:Port => 9292})
