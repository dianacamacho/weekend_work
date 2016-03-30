# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)

  word1_array = base_word.downcase.split("")
  word2_array = mutation.downcase.split("")

  word2_array.each do |letter|
    if word1_array.include?(letter)
      @result = true
    else
      @result = false
    end  
  end
  @result
end
  



# end

# def standardize(word)

#  arr1 = word.split("")
#  arr_1_unique = arr1.unique
#  arr_ordered = arr1_uniq.sort  


# end



# Driver code - don't touch anything below this line.

puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")


puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end