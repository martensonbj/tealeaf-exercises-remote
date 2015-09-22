#EXERCISES FROM CHAPTER: BASICS

#1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.
first = "Brenna"
last = "Martenson"

puts "#{first} #{last}"

#2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find 1) the thousands number 2) the hundreds 3) the tens and 4) and the ones.
num = 1456
thousands = num / 1000
hundreds = num % 1000 / 100
tens = num % 1000 % 100 / 10
ones = num % 1000 % 100 % 10

puts "Original Number: #{num}"
puts "Thousands: #{thousands}"
puts "Hundreds: #{hundreds}"
puts "Tens: #{tens}"
puts "Ones: #{ones}"

#3. Write a program that uses a hash to store a list of movie titles with the year they came out.
movies = {  inside_out: 2015,
            avengers: 2014,
            mad_max: 2015,
            titanic: 1997
            }

puts movies[:inside_out]
puts movies[:avengers]
puts movies[:mad_max]
puts movies[:titanic]

#4. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
dates = [2015, 2014, 2015, 1997]

dates. each do |k|
  puts k
end

=begin
OR
puts dates[0]
puts dates[1]
puts dates[2]
puts dates[3]
puts dates[4]
=end

#5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

#6. Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
x = 3.45
y = 5.666
z = 91.23

puts x * x
puts y * y
puts z * z

#7. What does the following error message tell you?
#   There is a line of code with either the wrong type closing bracket or a bracket is missing.
