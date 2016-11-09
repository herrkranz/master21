class OrangeTree
  # if we don't define these guys here -
  # we won't be able to read these attributes later
  attr_reader :height, :age

# initialize is a private method
  def initialize
    # We set the default attributes
    @age = 0
    @height = 0
    @oranges = 0
  end

  def one_year_passes
    @age += 1
    @height += 2
    still_alive?
    produce_fruit
    return "One year has passed. Your tree is #{@age} years old, #{@height} meters high and has produced #{@oranges} oranges so far."
    # we can call a method within another another method
  end

  def count_the_oranges
    @oranges
  end

  private  # we can't call private methods from outside

  def still_alive?
    if @age < 20
      puts "I'm still alive"
    else
      puts "Your tree died"
    end
  end

  def produce_fruit
    if @age >= 5
      @oranges += 100
    end
  end



end

orangie = OrangeTree.new

puts orangie.one_year_passes
puts orangie.one_year_passes
puts orangie.one_year_passes
puts orangie.one_year_passes
puts orangie.one_year_passes
puts orangie.one_year_passes
