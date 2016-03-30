# Complete the method called split_array, which two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size of the indicated by the second parameter. See the driver code for examples.

def split_array(array, array_size)
  
  @array = array
  @inner_array_size = array_size

  @new_array = []

  until array.count == 0
    @new_array << @array.shift(@inner_array_size)
  end

  @new_array

end



  # @new_element_total.times do

  #   @split_array << @inner_array = []

  #   array_size.times do
  #     @inner_array << array.shift
#     end

#   end

# end


# Driver code - don't touch anything below this line.
puts "TESTING split_array..."
puts

result = split_array([0, 1, 2, 3, 4, 5], 2)

puts "Your method returned:"
p result
puts

if result == [[0, 1], [2, 3], [4, 5]]
  puts "PASS!"
else
  puts "F"
end

result = split_array([0, 1, 2, 3, 4, 5], 3)

puts "Your method returned:"
p result
puts

if result == [[0, 1, 2], [3, 4, 5]]
  puts "PASS!"
else
  puts "F"
end