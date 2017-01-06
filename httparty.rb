require 'httparty'
require 'date'

page = HTTParty.get("http://www.stellarbiotechnologies.com/media/press-releases/json")

# p page
news = page.parsed_response["news"][0]["title"]
new_publish = page.parsed_response["news"][0]["published"]
puts news + new_publish
