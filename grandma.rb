puts "Please say something to Grandma. Remember, she is hard of hearing."
response = gets.chomp
random_year = rand(21)
grandmas_year = 1930 + random_year

if response == response.upcase
  puts "NO, NOT SINCE #{grandmas_year}!"
else puts "WHATS THAT? SPEAK UP SONNY!"
end