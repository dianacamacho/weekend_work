# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# MY DRIVER CODE

reservation = HotelReservation.new({customer_name: "Diana Camacho", date: "06/01/2016", room_number: 503})

puts "Testing hotel reservation: ..."

puts
  if reservation.customer_name == "Diana Camacho"
    puts "Your method returned: " + reservation.customer_name
    puts "PASS!"
  else
    puts "Fail!"
  end

puts 
  if reservation.date == "06/01/2016"
    puts "Your method returned: " + reservation.date
    puts "PASS!"
  else
    puts "Fail!"
  end 

puts
  if reservation.room_number == 503
    puts "Your method returned: " + reservation.room_number.to_s
    puts "PASS!"
  else
    puts "Fail!"
  end

puts "**********\nTesting changes to room number: ..."
reservation.room_number = 603

puts
  if reservation.room_number == 603
    puts "Your method returned: " + reservation.room_number.to_s
    puts "PASS!"
  else
    puts "Fail!"
  end

puts "**********\nTesting add_a_fridge: ..."
reservation.add_a_fridge

puts
  if reservation.amenities.include?("fridge")
    puts "Your method returned: #{reservation.amenities.include?("fridge")}"
    puts "PASS!"
  else
    puts "Fail!"
  end

puts "**********\nTesting add_a_crib: ..."
reservation.add_a_crib

puts
  if reservation.amenities.include?("crib") 
    puts "Your method returned: #{reservation.amenities.include?("crib")}"
    puts "PASS!"
  else
    puts "Fail!"
  end

puts "**********\nTesting add_a_custom_amenity: ..."
reservation.add_a_custom_amenity("extra towels")

puts
  if reservation.amenities.include?("extra towels") 
    puts "Your method returned: #{reservation.amenities.include?("extra towels")}"
    puts "PASS!"
  else
    puts "Fail!"
  end






# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method