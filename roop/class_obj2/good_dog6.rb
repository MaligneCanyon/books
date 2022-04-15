class GoodDog
  def self.met # equiv to 'def GoodDog.met'
    puts 'hi' # method contains no state info, so def as a class method
  end
end

dog = GoodDog.new
GoodDog.met
