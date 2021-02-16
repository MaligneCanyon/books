class Vehicle
  @@num_vehicles = 0

  def initialize
    @@num_vehicles += 1
  end

  def self.number_of_vehicles
    @@num_vehicles
  end

  def self.mileage(distance_travelled, fuel_consumed)
    @@mileage = distance_travelled / fuel_consumed
    "#{@@mileage} miles per gallon"
  end
end

class Truck < Vehicle
  CARGO_SPACE = 40 # square feet
  # with no init method here, the superclass init method is used instead
end

class MyCar < Vehicle
  CARGO_SPACE = 20 # cubic feet

  attr_reader :year, :model
  attr_accessor :speed, :on, :color

  # we want to init vars specific to the MyCar class, in addition to
  # performing the init in the Vehicle superclass
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @on = true
    super() # pass zero args to the superclass initialize method
  end

  def to_s
    "MyCar: #{color} #{year} #{model} #{speed} mph"
  end

  def speed_up
    if on
      self.speed += 10
      puts "speeding up"
    else
      puts "turned off"
    end
  end

  def brake
    if on && speed > 0
      self.speed -= 10
      puts "braking"
    end
    puts "stopped" if speed == 0
  end

  def off
    if speed == 0
      self.on = false
      puts "turned off"
    else
      puts "still moving"
    end
  end

  def info
    puts "my #{color} #{year} #{model} is going #{speed} mph"
  end

  def spray_paint(hue)
    self.color = hue
    puts "freshly painted #{color}"
  end
end

car = MyCar.new(2018, 'red', 'GTX')
car.info
car.speed_up
car.speed_up
car.speed_up
car.speed_up
car.speed_up
car.speed_up
car.info
car.brake
car.off
car.info
car.brake
car.brake
car.brake
car.brake
car.brake
car.brake
car.off
car.spray_paint("black")
car.info
puts MyCar.mileage(50,2)
puts car

5.times { Truck.new }
puts "We have produced #{Vehicle.number_of_vehicles} vehicle(s)"

# although this works too, vehicles are from both the Truck class and the MyCar
# class (counts trucks and cars)
# puts "We have produced #{MyCar.number_of_vehicles} vehicle(s)"
