require "http"

puts "What city would you like the forcast of?"
city = gets.chomp
puts "Celcius or Farenheit?"
user_units = gets.chomp
if user_units == "Celcius" || user_units == "celcius" || user_units == "c"
  units = "metric"
else
  units = "imperial"
end

response = HTTP.get("https://api.openweathermap.org/data/2.5/forecast?q=#{city}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=#{units}")

weather_data = response.parse
temp = weather_data["list"][0]["main"]["temp"]

puts "The temperature today in #{city} is #{weather_data["list"][0]["main"]["temp"]}"
count = 1
while count <= 5
  puts "The temperature #{count} day(s) from now in #{city} is #{weather_data["list"][count]["main"]["temp"]}"
  count += 1
end
