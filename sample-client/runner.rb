require 'unirest'

response = Unirest.get("http://localhost:3000/hello_url")
hello_data = response.body

puts JSON.pretty_generate(hello_data)