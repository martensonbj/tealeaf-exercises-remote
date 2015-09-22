#EXERCISES FROM CHAPTER: FLOW CONTROL

#1. Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.
  #1. false 2. false 3. false 4. true 5. true

#2. Write a method that takes a string as argument. The method should return the all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD".
def cap_string(string)
  if string.length > 10
    puts string.upcase
  else
    puts string
  end
end

puts cap_string("expialafraglistic")
puts cap_string("yo")

#3. Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

def num_range(new_num)
  if new_num <= 50
    puts "Your number is between 0 - 50"
  elsif new_num <= 100
    puts "Your number is between 51 and 100"
  else
    puts "Your number is above 100"
  end
end

puts "Please provide a number."
new_num = gets.chomp.to_i

puts num_range(new_num)

#4. What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.
  # 1. "FALSE" 2. "Did you get it right?" 3. "Alright now!"

#5. Rewrite your program from exercise 3 using a case statement. Wrap each statement in a method and make sure they both still work.
def num_range_case(new_num)
  case
  when new_num <= 50
    puts "Your number is between 0 - 50"
  when new_num <= 100
    puts "Your number is between 51 and 100"
  else
    puts "Your number is above 100"
  end
end

puts "Please provide a number."
new_num = gets.chomp.to_i

#6. Why do you get this error and how can you fix it?
  # Both the meethod and the if statement requires "end" to close the block(s) of code. One end is missing. 
