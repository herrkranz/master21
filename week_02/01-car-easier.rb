class car
  # getter - I can read model and wheel_count but not write to them
  #attr_reader :model, :wheel_count
  #attr_reader :model, :wheel_count
  attr_reader :model, :wheel_count

  def initialize(model: 'Unknown model', wheel_count: 4)
    @model = model
    @wheel_count= wheel_count
  end

# setter
  def start_engine
    "Beeep!"
  end

end

my_car = Car.new

my_car.start_engine
