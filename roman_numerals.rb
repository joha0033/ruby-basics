puts "Give me a number greater than zero and I'll convert it to a roman numeral!"
original_number = gets.chomp.to_i
number = original_number
roman_numeral = ''

if number == 0
  puts "I said give me a NUMBER GREATER THAN ZERO... ass..."
  exit
end

numerals_array = [[1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1],['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']]
x = 0
while number > 0
  if number >= numerals_array[0][x]
    roman_numeral << numerals_array[1][x]
    number -= numerals_array[0][x]
  else
    x += 1
  end
end

puts "#{original_number} in roman numerals is #{roman_numeral}!"