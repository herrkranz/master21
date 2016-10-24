#prompting people to use numbers

print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "Give me an amount of money and I'll give you back 10%: "
amount = gets.chomp.to_f

change = amount / 10
puts "I'll give you back #{change} in change"
