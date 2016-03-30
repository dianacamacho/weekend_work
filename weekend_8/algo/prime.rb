# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

class Prime
  require 'rspec'

  def is_prime?(number)
    if number != 2 && number % 2 == 0
      false
    elsif number != 3 && number % 3 == 0
      false
    elsif number != 5 && number % 5 == 0
      false
    elsif number != 7 && number % 7 == 0
      false
    elsif number / 1 == number && number % number == 0
      true
    end
  end

end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

class HighPrime

  def highest_prime_number_under(number)
    range_array = (0..number).to_a
    range_array.pop
    range_array.reverse!
    highest_prime = []

    range_array.each do |array_number|
      if array_number != 2 && array_number % 2 == 0
        false
      elsif array_number != 3 && array_number % 3 == 0
        false
      elsif array_number != 5 && array_number % 5 == 0
        false
      elsif array_number != 7 && array_number % 7 == 0
        false
      elsif array_number / 1 == array_number && array_number % array_number == 0
        highest_prime << array_number
      end
    end

    return highest_prime[0]
  end

end

RSpec.describe Prime do
  describe '#is_prime?' do
    it 'should return true if the number is prime' do
      num = Prime.new
      result = num.is_prime?(8)
      expect(result).to eq(false)
    end
  end
  
end

RSpec.describe HighPrime do
  describe '#highest_prime_number_under' do
    it 'should return the highest prime number under param number(7 for 10)' do
      num = HighPrime.new
      result = num.highest_prime_number_under(10)
      expect(result).to eq(7)
    end
  end
  
end

