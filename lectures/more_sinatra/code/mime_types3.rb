require 'sinatra'

get "/user.?:format?" do |format|
  if format == 'gif'
    content_type :gif
    send_file "screen_bug.gif"
  else
    "Default is text/html"
  end
end

get "/download/user" do
  attachment "filename.gif"   # name of downloaded file
  send_file "screen_bug.gif"  # name in file system
end
