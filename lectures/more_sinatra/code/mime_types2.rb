require 'sinatra'

get "/user.?:format?" do |format|

  if format == 'gif'
    content_type :gif
    send_file "screen_bug.gif"
  else
    "Default is text/html"
  end
end
