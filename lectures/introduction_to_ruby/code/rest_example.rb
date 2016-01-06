require 'rest_client'

url = 'https://api.twitter.com/1/users/show.json'

response = RestClient.get(url, 
               { :params => { :screen_name => 'TwitterAPI' } })

puts response.body
