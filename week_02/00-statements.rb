
cars = 20
people = 10

# if we have so many statements, Ruby will take only the first if that matches in order
# order matters in if and elseif statements
# it's discurraged to write a lot of if and if else statements
if cars < people
  puts "There are not enough cars"
elseif cars > people
  puts "There are enough cars to go around"
# one equal sign always means that we're assigning something
elseif cars == people
  puts "Puh, just enough cars for everyone"
eleseif cars != people
  puts "Something went wrong"
end

# this way it will run all of them:
if cars != people
end

if cars == people
end

if cars > people
end

# Ruby has a specific word - unless. No other language has it
unless cars < people
  puts "there are not enough cars"
end
