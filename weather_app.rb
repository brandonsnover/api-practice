require "http"

while true
  puts "What city would you like the forcast of?"
  city = gets.chomp
  puts "Celcius or Farenheit?"
  user_units = gets.chomp
  if user_units == "Celcius" || user_units == "celcius"
    units = "metric"
  else
    units = "imperial"
  end

  response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=#{units}")

  weather_data = response.parse
  temp = weather_data["main"]["temp"]
  humidity = weather_data["main"]["humidity"]

  puts "The current temperature in #{city} is #{temp} humidity is #{humidity}."
end
