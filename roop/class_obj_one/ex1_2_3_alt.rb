class MyCar

  attr_accessor :color
  attr_reader   :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
    @car_on = false
  end

  def accel(speed_chg)
    if @car_on
      @speed += speed_chg
      @speed = 0 if @speed < 0
      puts "car is #{speed_chg > 0 ? 'ac' : 'de'}cellerating"
    else
      puts 'car is turned off'
    end
  end

  def turn_on_off
    if @speed.zero?
      @car_on = @car_on ? false : true
      puts "car was turned #{@car_on ? 'on' : 'off'}"
    else
      puts 'car is in motion'
    end
  end

  def spray_paint(new_color)
    if @speed.zero?
      # @color = new_color # although this works ...
      self.color = new_color # ... use the setter method instead of the instance var
      puts "car was painted #{new_color}"
    else
      puts 'car is in motion'
    end
  end

  def fraud(new_year)
    # this works, changes car year
    # @year = new_year

    # this fails (produces a NoMethodError w/o the rescue clause) since the
    # 'year' method is an attr_reader only
    # (we are using accessor methods to control access to the class state)
    begin
      self.year = new_year
      puts "car year was changed to #{new_year}"
    rescue
      puts "can't change vehicle year"
    end
  end

  def info
    "My #{@color} #{@year} #{@model} is travelling at #{@speed} mph."
    # "My #{self.color} #{self.year} #{self.model} is travelling at #{self.speed} mph."
  end
end

ratbox = MyCar.new(2011, "yellow", 'Prius')
p ratbox.info
ratbox.accel(20) # should fail; car is turned off
ratbox.spray_paint('blue') # should succeed
ratbox.turn_on_off # should turn car on
ratbox.accel(20) # should succeed
ratbox.accel(-5) # should succeed
ratbox.turn_on_off # should fail; car is moving
ratbox.spray_paint('black') # should fail; car is moving
p ratbox.info
ratbox.fraud(2012) # should not allow year to be changed
p ratbox.info
