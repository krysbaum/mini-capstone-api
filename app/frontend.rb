require "http"

puts "Welcome... to the future."
puts "What would you like to see?"
puts "1. NuPhone || 2. CoM9U70R || 3. Zubz || 4. All Products"
input = gets.chomp.to_int
if input == 1
  response = HTTP.get("http://127.0.0.1:3000/phone.json")
  pp response.parse
elsif input == 2
  response = HTTP.get("http://127.0.0.1:3000/laptop.json")
  pp response.parse
elsif input == 3
  response = HTTP.get("http://127.0.0.1:3000/headphones.json")
  pp response.parse
else
  response = HTTP.get("http://127.0.0.1:3000/all_products.json")
  pp response.parse
end
