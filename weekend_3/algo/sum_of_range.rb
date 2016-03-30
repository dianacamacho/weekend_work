# Complete the method called sum_of_range, which will accept an array containing
# two numbers, and return the sum of all of the whole numbers within the range of those
# numbers, inclusive.

def sum_of_range(array)

  array.sort!

  first = array.first
  last = array.last

  range_array = (first..last).to_a
  sum = 0 

  range_array.each do |number|
    sum += number
  end

  sum

end


  # OR SOLUTION 2, LONGER WAY:

  # first = array.first
  # last = array.last
  # size = (last - first).abs + 1

  # if first < last 
  #   number_to_add = first
  # else 
  #   number_to_add = last
  # end

  # new_array = []

  # size.times do 
  #   new_array << number_to_add
  #   number_to_add = number_to_add.next
  # end

  # sum = 0

  # new_array.each do |number|
  #   sum += number
  # end

  # sum


# Driver code - don't touch anything below this line.
puts "TESTING sum_of_range..."
puts

result = sum_of_range([1, 4])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = sum_of_range([4, 1])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end