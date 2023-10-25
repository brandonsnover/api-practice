require "http"
puts "enter the name:"
name = gets.chomp
puts "enter the price:"
price = gets.chomp.to_i
puts "enter the image_url:"
url = gets.chomp
puts "enter the description:"
description = gets.chomp

response = HTTP.post("http://localhost:3000/products.json", :params => { name: name, price: price, image_url: url, description: description })
data = response.parse

pp data
