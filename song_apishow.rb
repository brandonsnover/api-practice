require "http"
puts "Enter song id:"
number = gets.chomp

response = HTTP.get("http://localhost:3000/songs/#{number}.json")
data = response.parse

puts "#{data["title"]} on the album #{data["album"]} was released by #{data["artist"]} in #{data["year"]}"
