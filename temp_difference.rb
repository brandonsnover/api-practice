require "http"

puts "Enter a city:"
city = gets.chomp
puts "Celcius or Farenheit?"
user_units = gets.chomp
if user_units == "Celcius" || user_units == "celcius" || user_units == "c"
  units = "metric"
else
  units = "imperial"
end

response = HTTP.get("https://api.openweathermap.org/data/2.5/forecast?q=#{city}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=#{units}")
