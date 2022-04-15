# getter and setter methods

class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end

  # method 1
  # def set_name=(name)
  #   @name = name
  # end
  # def get_name
  #   @name
  # end

  # method 2
  # def name=(n)
  #   @name = n
  # end
  # def name
  #   @name
  # end

  # method 3
  attr_accessor :name
end

sparky = GoodDog.new("Sparky")
puts sparky.speak

# method 1
# puts sparky.get_name
# sparky.set_name = "Sparkles"
# puts sparky.get_name

# methods 2 & 3
puts sparky.name
sparky.name = "Sparkles"
puts sparky.name
