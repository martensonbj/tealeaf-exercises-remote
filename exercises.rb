#EXERCISES FROM CHAPTER: EXERCISES

#1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each {|x| puts x }

#2. Same as above, but only print out values greater than 5.
arr.each {|x| puts x if x>5 }

#3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
arr.select {|x| puts x if x % 2.0 != 0 }

#4.Append "11" to the end of the original array. Prepend "0" to the beginning.
arr << 11
arr.unshift(0)
p arr

#5. Get rid of "11". And append a "3".
arr.pop
arr << 3
p arr

#6. Get rid of duplicates without specifically removing any one value.
new_arr = arr.uniq
p new_arr

#7. What's the major difference between an Array and a Hash?
  #An array is organized by indexes, a hash by key value pairs.

#8. Create a Hash using both Ruby syntax styles.
  hash = {:color => 'blue', :time => 'morning', :age => 55}
  hash = {color: 'blue', time: 'morning', age: 55}

#9.  Suppose you have a hash...
h = {a:1, b:2, c:3, d:4}
puts h[:b]

h[:e] = 5

h.delete_if { |k,v| v < 3.5 }
puts h

#10. Can hash values be arrays? Can you have an array of hashes? (give examples)
# Yes

hash1 = {
  ages: [14, 21, 22],
  names: ['joe', 'bob', 'shirley']
}

arr1 = [ {name: 'bob', age:14}, {name: 'joe', age: 21}, {name: 'shirley', age: 22}]

#11. Look at several Rails/Ruby online API sources and say which one you like best and why.
  # So far they all seem very similar - rubydocs.org seems to be the easiest to browse/search and read material so far.

#12. Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
p contacts

#13. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

joe_phone = contacts["Joe Smith"][:phone]
sally_phone = contacts["Sally Johnson"][:phone]

puts "Joe's phone number is #{joe_phone} and Sally's phone number is #{sally_phone}."

#14. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array.

contact_data1 = ["joe@email.com", "123 Main st.", "555-123-4567"]
contact1 = {"Joe Smith" => {}}
cats = [:email, :address, :phone]

contact1.each do |name, hash|
  cats.each do |element|
    hash[element] = contact_data1.shift
  end
end

puts "This is contact1: #{contact1}"

###DEFINITELY NEED HELP WITH THE MULTIPLE DATA SETS VERSION!###


#15. Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |element| element.start_with?("s") || element.start_with?("w")}
puts arr


#16. Take this array and turn it into a new array that consists of strings containing one word.
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a = a.map { |set| set.split }
a = a.flatten
p a

#17. What will the following program output?
    #These hashes are the same!
