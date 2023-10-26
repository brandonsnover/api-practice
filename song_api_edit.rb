require "tty-prompt"
require "http"

prompt = TTY::Prompt.new
selection = prompt.select("What would you like to do?", %w(Create Update Delete))

if selection == "Create"
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
elsif selection == "Update"
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
elsif selection == "Delete"
  puts "Enter song id to delete:"
  number = gets.chomp

  response = HTTP.delete("http://localhost:3000/songs/#{number}.json")
end
