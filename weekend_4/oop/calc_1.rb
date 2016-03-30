# Below, we have two types of calculators. The simple one can perform basic arithmetic, 
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is 
# a fundamental concept in OOP known as Inheritance. Your exercise is to research 
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code 
# below. You must also write the driver code to test your classes.

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

# Write your own driver code below:

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

