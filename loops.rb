#EXERCISES FROM CHAPTER: LOOPS & ITERATORS

#1. What does the each method in the following program return after it is finished executing?
 # [1,2,3,4,5]

#2. Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

  puts "Please enter a command"
  x = gets.chomp
  x.downcase

  while x != "stop"
    puts "You didn't stop me!"
    puts "Please enter another command"
    x = gets.chomp
    x.downcase
  end

  puts "You said stop!"

#3. Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.
  list = ["one", "brenna", "tomorrow", 42, "green peas"]
  list.each_with_index do |name, index|
    puts "##{index}. #{name}"
  end

#4. Write a method that counts down to zero using recursion.
puts "Please enter a number"
x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1
end

#OR

def count_down(number)
  if number >= 0
    puts number
    count_down(number-1)
  else
    puts "Your number is too low!"
  end
end

puts "Please chooes a number for the method"
number = gets.chomp.to_i

count_down(number)
