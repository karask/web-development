require 'sinatra'

configure { disable :show_exceptions }

error do
  "Error!"
  # haml :"404", layout => true
end

error 403 do
  "A 403 Error!"
  # haml :"403", layout => true
end

get "/403" do
  halt 403
end

get "/500" do
  raise StandardError, "Forced error"
end
