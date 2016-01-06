require 'savon'

url = 'http://wsf.cdyne.com/WeatherWS/Weather.asmx?WSDL'

client = Savon.client(wsdl: url)

puts client.operations

puts client.call(:get_weather_information)
