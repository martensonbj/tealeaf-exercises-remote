#EXERCISES FROM CHAPTER: METHODS

#1. Write a program that contains a method called greeting that takes a name as its parameter. It then prints a greeting message with the name included in it.
  def greeting(name)
    puts "Hello, #{name}, lovely to meet you!"
  end
  puts "What is your first name?"
  new_name = gets.chomp
  puts greeting(new_name)

#2. What do the following expressions evaluate to?
  #1. 2
  #2. nil
  #3. "Joe"
  #4. "four"
  #5. nil

#3. Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.
  def multiply(x, y)
    x * y
  end
  puts multiply(32, 45)

#4. What will the following code print to the screen?
    #nothing

#5. 1) Edit the method in exercise #4 so that it does print words on the screen. 2) What does it return now?
  def scream(words)
  words = words + "!!!!"
  puts words
  end

  scream("Yippeee")

  # prints "Yippeee!!!!" but returns nil

#6. What does the following error message tell you?
  # The method is expecting a second value as an input but only received one.
