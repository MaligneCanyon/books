# 'self' usage in class methods
class GoodDog
  def self.what_i_am
    # .class rtns 'Class' when called on a classname
    # "I am a #{self.class} class" # => Class; pretty useless
    "I am a #{self} class" # => GoodDog; more useful
  end

  # def initialize(name, height, weight)
  #   @name = name # could use 'self.name = name' here
  #   @height = height
  #   @weight = weight
  # end

  # attr_accessor :name, :height, :weight

  # def speak
  #   # "#{@name} says arf!"
  #   "#{name} says arf!" # better to use the 'getter' method
  # end

  # def change_info(n, h, w)
  #   # 'self' prefix req'd to dif btwn methods and local vars
  #   self.name = n
  #   self.height = h
  #   self.weight = w
  #   # @name = n # this works too, but better to use the 'setter' method
  #   # @height = h
  #   # @weight = w
  # end

  # def info
  #   "#{name} weighs #{weight} and is #{height} tall."
  # end
end

# sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
# puts sparky.speak
# puts sparky.info

# sparky.change_info('Spartacus', '24 inches', '45 lbs')
# puts sparky.info

# puts sparky # (to_s) rtns class name and object id
# p sparky # (inspect) rtns class name and object id, plus values of instance vars

puts GoodDog.what_i_am
puts GoodDog.class
