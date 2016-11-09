# Example: 1
# Define a simple method that prints out Hello and World on a new line
def say_hello
  puts "Hello"
  puts "World"
end

# Call the method
say_hello

# Example: 2
# A method can accept zero or more arguments (method =almost= function)
# this is a blueprint how the method works.
# If it runs someone will give us an argument (name) and we will run it
def salute(name)
  puts "Hey, #{name}! How are you doing?"
end

# assigning the arguments
salute("Tibor")
salute("Viktoria")
salute("Romeo")

# smallest parts in programming are methods
# if our method accepts arguments, we have to pass them in when we call the method
# everything that happens in the method, stays in the method.

# Example: 3
# A method always returns something. We can explicitly tell it what to return
#
def salute(name)
  #if we ignore return here, Ruby will print the last one ("Hey, ...")
  return "string a"
  "string b"
  "Hey, #{name}! How's it going?"
end
# this will return "string a"
puts salute ("Rodrigo")

#Functions can return
