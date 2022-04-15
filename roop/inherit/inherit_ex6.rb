module Haulable
  def haul
    puts "hauls lots of stuff"
  end
end

class Vehicle
  @@num_vehicles = 0

  def self.total_vehicles
    @@num_vehicles
  end

  def self.mileage(distance_travelled, fuel_consumed)
    @@mileage = distance_travelled / fuel_consumed
    "#{@@mileage} miles per gallon"
  end

  attr_reader :year, :model
  attr_accessor :speed, :on, :color

  def initialize(year, color, model)
    @@num_vehicles += 1

    @year = year
    @color = color
    @model = model
    @speed = 0
    @on = true
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

  # inheritance ex6
  def age
    puts "the vehicle is #{private_age} year(s) old "
  end

  # inheritance ex6
  private
  def private_age
    Time.now.year - year
  end
end

class Truck < Vehicle
  CARGO_SPACE = 40 # square feet

  include Haulable
end

class MyCar < Vehicle
  CARGO_SPACE = 20 # cubic feet

  def to_s
    "MyCar: #{color} #{year} #{model} #{speed} mph"
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

# inheritance ex2
5.times { truck = Truck.new(2018, 'lime green', 'Tundra') }
  # note: 'truck' is not visible outside this blk
puts "We have produced #{Vehicle.total_vehicles} vehicle(s)"

# inheritance ex3
truck = Truck.new(2018, 'lime green', 'Tundra')
truck.haul

# inheritance ex4
puts "\n", Vehicle.ancestors
puts "\n", MyCar.ancestors
puts "\n", Truck.ancestors
puts

# inheritance ex5
truck.info
puts Vehicle.mileage(40,2)

# inheritance ex6
old_car = MyCar.new(1998, 'light blue', 'Escort')
old_car.info
old_car.age
puts old_car.private_age # raises NoMethodError
