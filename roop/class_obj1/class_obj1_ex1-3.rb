class MyCar

  # ex2
  attr_accessor :color, :speed, :on
  attr_reader :year, :model


  # ex1
  def initialize(year, color, model)
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


  # ex1, ex2, ex3
  def info
    puts "my #{color} #{year} #{model} is going #{speed} mph"
  end


  # ex3
  def spray_paint(hue)
    self.color = hue
    puts "freshly painted #{color}"
  end
end


# ex1
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


# ex3
car.spray_paint("black")
car.info
