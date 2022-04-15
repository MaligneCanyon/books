class MyCar

  # ex1
  def self.mileage(distance_travelled, fuel_consumed)
    @@mileage = distance_travelled / fuel_consumed
    "#{@@mileage} miles per gallon"
  end


  #ex2
  def to_s
    "MyCar: #{color}, #{year}, #{model}, #{speed} mph"
  end


  attr_accessor :speed, :on, :color
  attr_reader :year, :model

  def initialize(year, color, model)
    @year = year # can't use 'self.year' since it's an attrib_reader only
    @model = model
    self.color = color
    self.speed = 0
    self.on = true
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

# ex1
puts MyCar.mileage(50, 3)

# ex2
puts car
