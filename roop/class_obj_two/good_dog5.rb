class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a) # can use 'self' w/i initialize too (if the attr_writer methods are def'd) !
    self.name = n             # uses setter method
    self.age  = a * DOG_YEARS # uses setter method
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.age # => 28 # uses getter method
p sparky.age = 3000 # public setter methods may allow unwanted modifications
