require 'csv'
require 'date'

puts "What is the last name of the person you are looking for?"
last_name = gets.chomp.capitalize

birthday_info = CSV.read('birthday_data.csv', :headers => true, :converters => :date, :header_converters => :symbol)

cases_to_test = birthday_info.length

current_date = Date.parse('2014/06/17')
x = 0

while cases_to_test > x
  test_row = birthday_info[x]
  if test_row[0] == last_name
    puts "We found them! (WOOHOO!) Here is their information:"
    puts "\tName: #{test_row[1]} #{test_row[0]}, DOB: #{test_row[2]}, Email: #{test_row[3]}"

    birthday = Date.parse(test_row[2])
    age = ((current_date - birthday) / 365).to_i

    puts "\tThis person is #{age} years old!"
    break
  elsif
    cases_to_test == x + 1
    puts "Hmmmm.... I searched and searched, but we don't have a record of that person. SORRY!"
    break
  else
    x += 1
  end
end
