require 'unirest'

system "clear"
screen_size = 100

subreddit_response = Unirest.get("https://www.reddit.com/r/magicTCG/.json").body

articles = subreddit_response["data"]["children"]

articles.each_with_index do |article, index|
  puts "#{index + 1}) #{article["data"]["title"]}"
end

puts "Enter an article number to see the comments:"
choice = gets.chomp.to_i

article_response = Unirest.get("")