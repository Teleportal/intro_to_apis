require 'unirest'

response = Unirest.get("http://localhost:3000/beers")
song = response.body

puts song["lyrics"]