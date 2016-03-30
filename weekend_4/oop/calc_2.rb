# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module Operations

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

  def square_root(number)
    Math.sqrt(number)
  end

end

class SimpleCalculator
  include Operations

end

class FancyCalculator
  include Operations

end

# Copy your driver code from the previous exercise below:

simple = SimpleCalculator.new
fancy = FancyCalculator.new

puts "Testing simple calculator ADD..."
result = simple.add(2, 2)

if result == 4
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

puts 
puts "Testing fancy calculator ADD..."
result = fancy.add(2, 2)

if result == 4
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

puts 
puts "Testing simple calculator SUBTRACT..."
result = simple.subtract(5, 2)

if result == 3
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

puts 
puts "Testing fancy calculator SUBTRACT..."
result = fancy.subtract(5, 2)

if result == 3
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

puts 
puts "Testing simple calculator MULTIPLY..."
result = simple.multiply(5, 2)

if result == 10
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

puts 
puts "Testing fancy calculator MULTIPLY..."
result = fancy.multiply(5, 2)

if result == 10
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

puts 
puts "Testing simple calculator DIVIDE..."
result = simple.divide(6, 2)

if result == 3
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

puts 
puts "Testing fancy calculator DIVIDE..."
result = fancy.divide(6, 2)

if result == 3
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

puts 
puts "Testing fancy calculator SQUARE ROOT..."
result = fancy.square_root(25)

if result == 5
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end
