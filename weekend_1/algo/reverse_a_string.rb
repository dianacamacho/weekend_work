# Complete the method called reverse_a_string that accepts a string as a
# parameter and  returns the reverse. The one caveat: Don't use the reverse
# method that already comes with Ruby!

def reverse_a_string(string)

  string_letter_array = string.split("")

  reversed_letter_array = []
  # or push into empty string: reversed_string = ""
  # string_letter_array.each do |character|
  #   reversed_string = character + reversed_string
  # end
  # reversed_string

  until string_letter_array.size == 0
    reversed_letter_array << string_letter_array.pop
  end

  reversed_letter_array.join

  #string_letter_array.reverse.join
end
  

# Driver code - don't touch anything below this line.
puts "TESTING reverse_a_string..."
puts

result = reverse_a_string("abcde")

puts "Your method returned:"
puts result
puts

if result == "edcba"
  puts "PASS!"
else
  puts "F"
end