puts "Say something to Grandma! She's hard of hearing."
response = gets.chomp

random_year = rand(21)
grandmas_year = random_year + 1930

if response != response.upcase
  puts "HUH?! SPEAK UP SONNY!"
else
  puts "NO, NOT SINCE #{grandmas_year}!"
end