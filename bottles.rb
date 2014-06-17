puts "Please enter 'sing' and a number greater than zero and we'll sing you a song!!"
response = gets.chomp

response_array = response.split
number_of_bottles = response_array[1].to_i

if response_array[0] != 'sing'
  puts "You fool! I gave you explicit instructions."
  exit
elsif number_of_bottles < 1 || number_of_bottles > 99
  puts "Please use a number greater than 0 and less than 100! Really breaking my balls here..."
  exit
end

while number_of_bottles > 0 do
  puts "#{number_of_bottles} bottles of beer on the wall."
  puts "#{number_of_bottles} bottles of beer."
  puts "Take one down, pass it around..."
  number_of_bottles -= 1
end

puts "Now all the beer is gone. Go home, your drunk..."


