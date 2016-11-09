class OrangeTree

  def initialize
    @tree = "orange tree"
    @age = 0
    @height = 0
    @orange_count = 0
    @orange_pick = 0
    @leftover_count = 0
    puts "Your #{@tree} is budding."
  end

  def age
    puts "Your #{@tree} is #{@age} years old. "
    @age = @age
    one_year_passes
  end

  def height
    puts "Your #{@tree} is #{@height} meters taller. "
    @height = @height
  end

  def oranges
    puts "Your #{@tree} has #{@orange_count} oranges. "
    @orange_count = @orange_count
  end

  def pick_an_orange
    puts "How many oranges do you pick?"
    @orange_pick = gets.chomp.to_i
    puts "You picked #{@orange_pick} oranges."
    @orange_count = @orange_count - @orange_pick
  end

  # def count_the_oranges
  #   @orange_count

  def one_year_passes
    if @age >= 0 #and @age < 300
        @age = @age + 1
    end

    if @height >= 0 and @height < 30
        @height = @height + 1
    else
        puts "Your #{@tree} stopped growing."
    end

    if @age >= 4
        @orange_count = @orange_count + (@age * 2)
        puts "Your tree has #{@orange_count} oranges."
    end

    if @age >= 4
           @orange_pick = @orange_pick + @orange_pick
           orange_left = @orange_count - @orange_pick
           puts "Your tree has #{orange_left} oranges left."
    end
  end

  def reset_counter
    @leftover_count = @orange_count;
  puts "Remaining #{@orange_count} oranges fall off the tree."
  end
  # while one_year_passes == true do
  #   number += 1
  #   if number == 300
  #     puts "The tree died"
  #     exit
  #   end

end

orange = OrangeTree.new
orange.age
orange.age
orange.age
orange.age
orange.age
orange.age
orange.age
orange.oranges
orange.pick_an_orange
orange.oranges
orange.reset_counter
orange.age
