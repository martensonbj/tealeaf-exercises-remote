#EXERCISES FROM CHAPTER: HASHES

#1. Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immed_fam = family.select do |k, v|
  k == :sisters || k == :brothers
end
p immed_fam
new_arr = immed_fam.values.flatten
p new_arr

#2. Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
  #merge temporarily creates a new outpout, wherease merge! permanently changes the original data.

  hash1 = {name: "brenna", age:29}
  hash2 = {hair: "brown", eyes: "brown"}

puts hash1.merge(hash2)
puts hash1
puts hash2
puts hash1.merge!(hash2)
puts hash1
puts hash2

#3. Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
  hash1 = {:name=>"brenna", :age=>29, :hair=>"brown", :eyes=>"brown"}

  hash_keys = hash1.select { |k, v| puts k }
  hash_values = hash1.select { |k, v| puts v }
  hash_all = hash1.select { |k, v|  puts "#{k}: #{v}" }

  #OR

  hash1.each_key { |k| puts k }
  hash1.each_value { |v| puts v }
  hash1.each { |k, v| puts "#{k}: #{v}"}


#4. Given the following expression, how would you access the name of the person?
  person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
  person[:name]

#5. What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.
  person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
  person.has_value?("Bob")

#6. Write a program that prints out groups of words that are anagrams.
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# iterate over words array, and for each word:
#   alphabetize it
#   if key exists, append to the keys list
#   else create new key with this word in the list

result = {}

words.each do |x|
  key = x.split('').sort.join
  if result.has_key?(key)
    result[key].push(x)
  else
    result[key] = [x]
  end
end

p result

#7. What's the difference between the two hashes that were created?
  #In the first hash, x is a symbol that is unrelated to the variable declared previously. In the second hash, x is a string that refers to the declared variable x.

  #8. B. Keys refers to a hash, not an array. 
