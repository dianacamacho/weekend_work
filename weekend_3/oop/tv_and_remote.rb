# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_accessor :power, :volume, :channel

  def initialize
    @power = false # josh used "on"
    @volume = 0
    @channel = 1
  end

end

class Remote


  def initialize(paired_tv)
    @tv = paired_tv
  end
  
  def toggle_power
    @tv.power = !@tv.power

    # @tv.power == "on" ? @tv.power = "off" : @tv.power = "on"
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1
  end

  def set_channel(station)
    @tv.channel = station
  end

end

# MY DRIVER CODE

remote = Remote.new(television = Tv.new)
p television

puts "**********\nTesting TV power ..."
result = television.power

puts
  if result == false
    puts "Your method returned: #{result}"
    puts "PASS!"
  else
    puts "Fail!"
  end

puts "**********\nTesting TV volume ..."
result = television.volume

puts
  if result == 0
    puts "Your method returned: #{result}"
    puts "PASS!"
  else
    puts "Fail!"
  end

puts "**********\nTesting TV channel ..."
result = television.channel

puts
  if result == 1
    puts "Your method returned: #{result}"
    puts "PASS!"
  else
    puts "Fail!"
  end

puts "**********\nTesting TV Remote toggle_power ..."
remote.toggle_power
result = television.power

puts
  if result == true
    puts "Your method returned: #{result}"
    puts "PASS!"
  else
    puts "Fail!"
  end

puts "**********\nTesting TV Remote increment_volume ..."

6.times do 
  remote.increment_volume
end

result = television.volume

puts
  if result == 6
    puts "Your method returned: #{result}"
    puts "PASS!"
  else
    puts "Fail!"
  end

puts "**********\nTesting TV Remote decrement_volume ..."

remote.decrement_volume

result = television.volume

puts
  if result == 5
    puts "Your method returned: #{result}"
    puts "PASS!"
  else
    puts "Fail!"
  end

puts "**********\nTesting TV Remote set_channel ..."

remote.set_channel(278)

result = television.channel

puts
  if result == 278
    puts "Your method returned: #{result}"
    puts "PASS!"
  else
    puts "Fail!"
  end

p television
puts "power test" 
remote.toggle_power
remote.toggle_power
remote.toggle_power

remote.increment_volume
p television





