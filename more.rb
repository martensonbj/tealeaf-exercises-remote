#EXERCISES FROM CHAPTER: MORE STUFF

#1. Write a program that checks if the sequence of characters "lab" exists in the following strings.
def has_lab(string)
  new_string = string.downcase
  if new_string =~ /lab/
    puts "Match! #{string}"
  else
    puts "No Match"
  end
end

has_lab("laboratory")
has_lab("expieriment")
has_lab("Pans Labyrinth")
has_lab("elaborate")
has_lab("polar bear")

#2. What will the following program print to the screen? What will it return?
  #Nothing, it is missing the .call method.

#3. What is exception handling and what problem does it solve?
  # It allows a program to be rescued in the event of unexpcted or dangerous results while avoiding completely exiting out of the program.

#4. Modify the code in exercise 2 to make the block execute properly.
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

#5. Why the error?
# Because the use a block as an argument there must be a '&' in front of the variable.
