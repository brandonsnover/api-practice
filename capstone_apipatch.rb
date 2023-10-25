require "http"
parameters = {}
puts "enter product id:"
id = gets.chomp.to_i
puts "enter new name or 'no' to not change"
name = gets.chomp
if name == "no"
  name = nil
else
  parameters[:name] = name
end
puts "enter new price or 'no' to not change"
price = gets.chomp
if price == "no"
  price = nil
else
  parameters[:price] = price.to_i
end
puts "enter new image_url or 'no' to not change"
url = gets.chomp
if url == "no"
  url = nil
else
  parameters[:url] = url
end
puts "enter new description or 'no' to not change"
description = gets.chomp
if description == "no"
  description = nil
else
  parameters[:description] = url
end

response = HTTP.patch("http://localhost:3000/products/#{id}.json", :params => parameters)
