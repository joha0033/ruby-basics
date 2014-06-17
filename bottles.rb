puts "I'm gonna sing you a song. Say 'sing <number>' and I'll serenade you!"
response = gets.chomp.split(' ')

sing_response = response[0]
to_integer = response[1].to_i
final_response = []
final_response << sing_response
final_response << to_integer

bottles = final_response[1]

if final_response == []
  puts "HEY! I need to know how many bottles to sing about. Listen up dummy."
  exit
elsif final_response.size != 2
  puts "I'm done here. You don't listen... What did you even type?"
  exit
elsif final_response[0] != "sing"
  puts "I'm done here. You don't listen... Type sing first"
  exit
elsif final_response[1].is_a?(Integer) && final_response[1] > 0
  while bottles > 0
    puts "#{bottles} bottles of beer on the wall! #{bottles} bottles of beer! Take one down, pass it around..."
    bottles -= 1
  end
else
  puts "I have no idea what you are doing, you damn fool. Type 'sing' and give me any whole number greater than zero. Ugh... You probably went to Turing..."
  exit
end