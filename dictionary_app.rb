require 'unirest'

system "clear"
screen_size = 100

puts "=" * screen_size
puts "~*~*~*~*~ MY DICTIONARY APP ~*~*~*~*~".center(screen_size)
puts "=" * screen_size
puts
looking_up_words = true

while looking_up_words == true
  print "Please give me a word to define:".center(screen_size / 2)
  query = gets.chomp
  if query == "q"
    looking_up_words = false
  else
    definitions = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{query}/definitions?limit=10&includeRelated=true&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5").body

    example = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{query}/examples?includeDuplicates=false&useCanonical=false&skip=0&limit=5&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5").body

    pronounce = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{query}/pronunciations?useCanonical=false&limit=50&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5
    ").body
    puts
    puts "Definitions: "
    definitions.each_with_index do |definition, index|
      puts "#{index + 1} - #{definition["text"]}"
    end #{definition[0]["text"]}
    puts
    puts "An example: #{example["examples"][0]["text"]}"
    puts
    puts "Pronounciations:" 
    pronounce.each do |pronounciation|
      puts pronounciation["raw"]
    end

    puts
    puts "***"
    puts "Enter 'q' to exit!"
    puts "***"
    puts
  end
end