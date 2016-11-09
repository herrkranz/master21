# Functions and Variables

def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket.\n"
end


puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

# assigns the cheese_count a value of amount_of_cheese and does the
# same with boxes_of_crackers
puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)


puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)


puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)


def cheese_on_crackers(cheeses, crackers)
  puts "You have #{cheeses} cheeses and #{crackers} crackers!"
    if cheeses == crackers
      puts "That's enough for sandwiches"
    end

    if cheeses > crackers
      puts "Oh noes, that's too many cheeses"
    end

    if cheeses < crackers
      puts "Damn, that's too many crackers! Use Nutella!"
    end
end

cheese_on_crackers(10, 20)
