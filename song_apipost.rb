require "http"
puts "enter the title:"
title = gets.chomp
puts "enter the album:"
album = gets.chomp
puts "enter the artist:"
artist = gets.chomp
puts "enter the year:"
year = gets.chomp

response = HTTP.post("http://localhost:3000/songs.json", :params => { title: title, album: album, artist: artist, year: year })
data = response.parse

pp data
