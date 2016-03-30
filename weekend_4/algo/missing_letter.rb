# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)
  first_letter = range[0]
  last_letter = range[-1]
  range_array = (first_letter..last_letter).to_a
  missing_letters = []

  range_array.each do |letter|
   
    if range.include?(letter) == false
      missing_letters << letter
      @missing_letter = missing_letters.join
    elsif range_array == range.split("")
      @missing_letter = nil
    end

  end
  @missing_letter

end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end

puts "TESTING find_missing_letter (Bonus)..."
puts

result = find_missing_letter("ace")

puts "Your method returned:"
puts result
puts

if result == "bd"
  puts "PASS!"
else
  puts "F"
end
