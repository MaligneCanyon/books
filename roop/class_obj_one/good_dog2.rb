# initiatization and changing info

class GoodDog
  def initialize(name, height, weight)
    @name = name
    @height = height
    @weight = weight
  end

  attr_accessor :name, :height, :weight

  def speak
    # "#{@name} says arf!"
    "#{name} says arf!" # better to use the 'getter' method
  end

  def change_info(n, h, w)
    # can change instance vars directly,
    # and although this works ...
    # @name = n
    # @height = h
    # @weight = w

    # ... this doesn't
    # name = n
    # height = h
    # weight = w

    # 'self' prefix req'd to dif btwn setter methods and local vars
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
    # could use 'self' prefix for clarity on getter methods
    # "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def another_instance_method
    puts "accessing the info method from w/i another_instance_method:"
    # 'self' prefix not req'd here, but good idea for clarity
    puts self.info
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.speak
puts sparky.info

sparky.change_info('Spartacus', '24 inches', '45 lbs')
# puts sparky.info
sparky.another_instance_method
