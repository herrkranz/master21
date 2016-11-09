class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'forty_two'
    end

    english
  end
end

# I'd better test on a couple of numbers...
puts 5.to_eng
puts 42.to_eng

# We defined a method there (which makes it an integer method),
# and now all integers can use it.
# Inside that method we use self to refer to the object (the integer)
# using the method.

class Die

  def roll
    1 + rand(6)
  end

end

# Let's make a couple of dice...
dice = [Die.new, Die.new]

# ...and roll them.
dice.each do |die|
  puts die.roll
end
