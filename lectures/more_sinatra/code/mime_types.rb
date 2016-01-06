require 'sinatra'

configure do
  mime_type :gif, 'image/gif'
end

get "/user.?:format?" do |format|
  if format == 'gif'
    send_file "screen_bug.gif"
  else
    "Default is text/html"
  end
end
