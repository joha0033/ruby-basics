puts "Give me a number greater than zero and I'll give you back it's Roman Numeral"
number = gets.chomp.to_i

if number <= 0
  puts "Please enter a number greater than zero"
  exit
end

roman_numeral = ""

while number > 0
  case
    when number >= 1000
      roman_numeral += "M"
      number -= 1000
    when number >= 500
      if number >= 900
        roman_numeral += "CM"
        number -= 900
      else
        roman_numeral += "D"
        number -= 500
      end
    when number >= 100
      if number >= 400
        roman_numeral += "CD"
        number -= 400
      else
        roman_numeral += "C"
        number -= 100
      end
    when number >= 50
      if number >= 90
        roman_numeral += "XC"
        number -= 90
      else
        roman_numeral += "L"
        number -= 50
      end
    when number >= 10
      if number >= 40
        roman_numeral += "XL"
        number -= 40
      else
        roman_numeral += "X"
        number -= 10
      end
    when number >= 5
      if number >= 9
        roman_numeral += "IX"
        number -= 9
      else
        roman_numeral += "V"
        number -= 5
      end
    when number >= 1
      if number >= 4
        roman_numeral += "IV"
        number -= 4
      else
        roman_numeral += "I"
        number -= 1
      end
  end
end

puts roman_numeral
