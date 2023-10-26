require "http"
parameters = {}
puts "enter song id:"
id = gets.chomp.to_i
puts "enter new title or 'no' to not change"
title = gets.chomp
if title == "no"
  title = nil
else
  parameters[:title] = title
end
puts "enter new album or 'no' to not change"
album = gets.chomp
if album == "no"
  album = nil
else
  parameters[:album] = album
end
puts "enter new artist or 'no' to not change"
artist = gets.chomp
if artist == "no"
  artist = nil
else
  parameters[:artist] = url
end
puts "enter new year or 'no' to not change"
year = gets.chomp
if year == "no"
  year = nil
else
  parameters[:year] = year
end

response = HTTP.patch("http://localhost:3000/songs/#{id}.json", :params => parameters)
