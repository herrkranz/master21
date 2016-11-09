require 'pry'

# 1 - First we define the Car class
class Car
end

# 2 - Every class needs a so called initializer method
class Car
  def initialize
  end
end

# This is already enough code to create a new instance (Object) of the Car class
my_car = Car.new # => #<Car:0x007ff9341a6960>
tibors_car = Car.new # => #<Car:0x007ff9341a5f60>

# 3 - Now we want to add some attributes to the initializer
class Car
  def initialize(model)
    @model = model
  end
end

# Now we set the attribute 'model' on creation by using following statement
my_car = Car.new('Tesla Model S')
# my_car.model # => NoMethodError: undefined method `model' for #<Car:0x007ffd14acd1b8 @model="Tesla Model S">

# 4 - To be able to access the attribute we need to add a so called 'reader'
# method to the class
class Car
  def initialize(model)
    @model = model
  end

  def model
    @model
  end
end

my_car = Car.new('Tesla Model S')
my_car.model # => "Tesla Model S"

# 5 - Ruby gives us a nice way to define which attributes of a class we can
# read and write using attr_reader
class Car
  attr_reader :model

  def initialize(model)
    @model = model
  end
end

my_car = Car.new('Tesla Model E')
my_car.model # => "Tesla Model E"
my_car.inspect # => "#<Car:0x007ff9341a45c0 @model=\"Tesla Model E\">"

# 6 - What happens when we want to update our model?

# my_car.model = 'Tesla Model E' # => NoMethodError: undefined method `model='
# for #<Car:0x007fdc71004f88 @model="Tesla Model E">\nDid you mean?  model

# We get this error because we only allowed our object to read the 'model'
# attribute.
class Car
  attr_reader :model

  def initialize(model)
    @model = model
  end

  def model=(model)
    @model = model
  end
end

# Is one way to write a so called 'setter' method.
# Now we should be able to set the 'model' attribute even after initialization.
my_car = Car.new('Tesla Model S')
my_car.model = 'Tesla Model E'
my_car.model # => "Tesla Model E"


# Again there is a simpler way to write this in Ruby
class Car
  attr_reader :model
  attr_writer :model

  def initialize(model)
    @model = model
  end
end

# This is still too verbose. We can set both, getter and setter methods with
# just one ruby keyword, like this:
class Car
  attr_accessor :model

  def initialize(model)
    @model = model
  end
end

# 7 - Now we'll add a Method to our car class
class Car
  attr_reader :model

  def initialize(model)
    @model = model
  end

  def start_engine!
    "Beeeeep!"
  end
end

my_car = Car.new('Tesla Model X')
my_car.start_engine! # => "Beeeeep!"

# 8 - We will now update our initializer so that it only needs the name
class Car
  attr_reader :model
  attr_accessor :seats, :battery

  def initialize(model: "Unknown", seats: 4, battery: '100 kWh')
    @model = model
    @seats = seats
    @battery = battery
  end

  def start_engine!
    "Beeeeep!"
  end
end

my_car = Car.new(battery: '80 kWh')
my_car.inspect # => "#<Car:0x007ff933b66528 @model=\"Unknown\", @seats=4, @battery=\"80 kWh\">"
