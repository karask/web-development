require 'json'

string = '{ "name" : "John", 
            "age" : 25, 
            "address" : {
              "city" : "New York"
            }
          }'

parsed = JSON.parse(string)

p parsed["name"]
p parsed["address"]["city"]
