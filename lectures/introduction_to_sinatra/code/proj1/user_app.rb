# user_app.rb
class UserApp < Sinatra::Application
  get "/hello" do
    "Hi stranger!"
  end

  post "/hello" do
    "#{params[:name]}, your age is #{params[:age]}"
  end

  get "/hello_form" do
    "<HTML>" +
      "<HEAD><TITLE>Hello Form</TITLE></HEAD>" +
      "<BODY>" +
        "<FORM ACTION=\"/hello\" METHOD=\"post\">" +
          "Name: <INPUT TYPE=\"text\" name=\"name\"><br>" +
          "Age: <INPUT TYPE=\"text\" name=\"age\"><br>" +
          "<INPUT type=\"submit\" value=\"Submit\">" +
        "</FORM>" +
      "</BODY>" +
    "</HTML>"
  end
end
