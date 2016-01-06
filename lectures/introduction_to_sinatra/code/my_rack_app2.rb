# my_rack_app2.rb
class MyApp
  def call(env)
    [ 200, 
      {'Content-Type' => 'text/plain'},
      ['Hello from Rack!']
    ]
  end
end
