#EXERCISES FROM CHAPTER: BASICS

#1. Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3

puts "True or False: The variable is in the array?"
puts arr.include?(number)

#2. What will the following programs return? What is value of arr after each?
# Returns: 1
# Resulting array: [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

# Returns: [1,2,3]
# Resulting Array: [["b", [1, 2, 3]], ["a", [1, 2, 3]]]

#3. How do you print the word "example" from the following array?
  #arr.last[0]
  #OR
  #arr.last.first

#4. What does each method return in the following example?
  #1. 3
  #2. error
  #3. 8

#5. What is the value of a, b, and c in the following program?
# a == 3, b == T, c == A

#6. You run the following code...why the error?
  # The input should be an index, not a value. Replace 'margaret' with 3.

#7. Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2.
arr1 = [1,2,3,4,5]
arr2 = arr1.map { |x| x + 2}

p arr1
p arr2

#OR

arr_1 = [4,5,6,7,8]
arr_2 = []

arr_1.each do |x|
  arr_2.push x + 2
end

p arr_1
p arr_2
