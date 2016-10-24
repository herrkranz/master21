# loops are ...
# we have 3 items in array - loop will execute 3 times
breakfast = ["cheese", "bacon", "wine"]

# breakfast.each { |food| puts food } - one line to write the same
breakfast.each do |food|
  puts food
end

for food in breakfast do
  puts food
end

statement = true
number = 0

breakfast.each_with_index { |food, index| puts food + " " + index.to_s }

# while loop
while statement == true do
  puts "Iteration: #{number}"
  # short notion to increase the number by one - into infinity
  number += 1
  if number == 200
    exit
  end
end
# this will run endlessly
