require "http"

system "clear"
puts "Choose an option"
puts "[1] Random fortune"
puts "[2] Lotto numbers"
puts "[3] Page visit counter"

input_option = gets.chomp
if input_option == "1"
  response = HTTP.get("http://localhost:3000/api/fortune_url")
  fortune = response.parse["fortune"]
  puts fortune
elsif input_option == "2"
  response = HTTP.get("http://localhost:3000/api/lotto_url")
  lotto_numbers = response.parse["lotto_nums"]
  p lotto_numbers
elsif input_option == "3"
  response = HTTP.get("http://localhost:3000/api/count_url")
  count = response.parse["visit_count"]
  puts "The number of visits is #{count}"
end