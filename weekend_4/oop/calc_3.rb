# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

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

end

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

simple = SimpleCalculator.new
fancy = FancyCalculator.new
whiz = WhizBangCalculator.new

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
puts "Testing simple calculator DIVIDE..."
result = simple.divide(6, 2)

if result == 3
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

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

puts "Testing whiz calculator ADD..."
result = whiz.add(2, 2)

if result == 4
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

puts 
puts "Testing whiz calculator SUBTRACT..."
result = whiz.subtract(5, 2)

if result == 3
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

puts 
puts "Testing whiz calculator MULTIPLY..."
result = whiz.multiply(5, 2)

if result == 10
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

puts 
puts "Testing whiz calculator DIVIDE..."
result = whiz.divide(6, 2)

if result == 3
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

puts 
puts "Testing whiz calculator SQUARE ROOT..."
result = whiz.square_root(25)

if result == 5
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

puts 
puts "Testing whiz calculator HYPOTENUSE..."
result = whiz.hypotenuse(3,4)

if result == 5
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

puts 
puts "Testing whiz calculator EXPONENT..."
result = whiz.exponent(10,2)

if result == 100
  puts "Your method returned:"
  p result
  puts "PASS!"
else
  puts "FAIL!"
end

