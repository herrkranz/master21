#number of cars equals one hundred
cars = 100
#spaces in a car equals four point zero
space_in_a_car = 4.0
#drivers equals 30
drivers = 30
#passengers equals ninety
passengers = 90
#not driven cars equals cars minus drivers
cars_not_driven = cars - drivers
#driven cars equals drivers
cars_driven = drivers
#carpool capacity equals driven cars times spaces in a car
carpool_capacity = cars_driven * space_in_a_car
#average passengers per car equals passengers slash driven cars
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

#if we only use 4 instead of 4.0 we won't get float in a result
#computer will omit the decimal number
x = 10
i = 20

puts "x + i equals #{x + i}"
