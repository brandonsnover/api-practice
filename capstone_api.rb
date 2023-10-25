require "http"
puts "Enter product id:"
number = gets.chomp

response = HTTP.get("http://localhost:3000/products/#{number}.json")
data = response.parse

puts "#{data["name"]} cost #{data["price"]}. #{data["description"]}"
