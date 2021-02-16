# a module is a container for related methods
# we use a module when we want code to be available to dif classes
# we use a module by invoking the 'include' method w/i our class
# and calling the method(s) in the module on our obj

module Play
  def chases_yarn
    puts "yarn everywhere"
  end
end

class Cat
  puts "meow"
  include Play
end

catherine = Cat.new
catherine.chases_yarn
