#parameters, unpacking, variables

first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

print "What is your forth variable?"
variable = $stdin.gets.chomp

puts "Your fourth variable is: #{variable}"
