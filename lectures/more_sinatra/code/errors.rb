require 'sinatra'

configure { disable :show_exceptions }

get "/" do
  "Works"
end

not_found do
  "Not found!"
  # haml :"404", layout => true
end

error do
  "Error!"
  # haml :error, layout => true
end

get "/500" do
  raise StandardError, "Forced error"
end
