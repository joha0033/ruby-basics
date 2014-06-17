puts "Give me a number greater than zero and I'll convert it to a roman numeral!"
original_number = gets.chomp.to_i
number = original_number
roman_numeral = ''

if number == 0
  puts "I said give me a NUMBER GREATER THAN ZERO... ass..."
  exit
end

while number > 0
  case
    when number >= 1000
      roman_numeral << 'M'
      number -= 1000
    when number >= 900
      roman_numeral << 'CM'
      number -= 900
    when number >= 500
      roman_numeral << 'D'
      number -= 500
    when number >= 400
      roman_numeral << 'CD'
      number -= 400
    when number >= 100
      roman_numeral << 'C'
      number -= 100
    when number >= 90
      roman_numeral << 'XC'
      number -= 90
    when number >= 50
      roman_numeral << 'L'
      number -= 50
    when number >= 40
      roman_numeral << 'XL'
      number -= 40
    when number >= 10
      roman_numeral << 'X'
      number -=10
    when number >= 9
      roman_numeral << 'IX'
      number -= 9
    when number >= 5
      roman_numeral << 'V'
      number -= 5
    when number >= 4
      roman_numeral << 'IV'
      number -= 4
    when number >= 1
      roman_numeral << 'I'
      number -= 1
  end
end

puts "#{original_number} in roman numerals is #{roman_numeral}!"
