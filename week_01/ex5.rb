name = 'Zed A. Shaw'
age = 35.0 # not a lie in 2009
height = 74.0 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'
height_cm = height * 2.45
weight_kg = weight * 0.454

puts "Let's talk about #{name}."
puts "He's #{height} inches tall."
puts "He's #{weight} pounds heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

#this line is tricky, try to get it exactly right
puts "If I add #{age}, #{height}, and #{weight}, and #{weight} I get #{age + height + weight}."

puts "My size in cm is #{height_cm} cm and my weight in kg is #{weight_kg} kg."
