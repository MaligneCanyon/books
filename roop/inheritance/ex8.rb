# there is no public instance method 'hi' for the class 'Person'

# we have something like
# class Person
#   private
#   def hi
#     puts "howdy"
#   end
# end
# bob = Person.new
# bob.hi

# in this case, instead of calling 'hi' directly, we could add a public method
# 'sneaky' that calls the 'hi' method (w/o using 'self')
class Person
  def sneaky
    hi # can't use 'self' here, will generate err
  end

  private
  def hi
    puts "howdy"
  end
end
bob = Person.new
bob.sneaky

# alternatively, simply redefine 'hi' as a public method
# class Person
#   def hi
#     puts "howdy"
#   end
# end
# bob = Person.new
# bob.hi
