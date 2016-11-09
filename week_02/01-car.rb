# a class car
class Car
  #defined attributes
  def initialize(model, wheel_count)
    @model = model
    @wheel_count = wheel_count
  end

# Getter Method (in java - get.blabla)
  def model
    @model
  end

# method
  def start_engine
    "Vroooom!"
  end
end

# object of a class car
my_car = Car.new('Tesla Model S', 4)
