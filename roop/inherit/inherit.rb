module MyModule; end

class MySuperClass
  include MyModule
end

class MyClass < MySuperClass
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def say_hi
    puts "Hi #{name}"
  end
end

bob = MyClass.new('Bob')
bob.say_hi # Hi Bob
bob.send(:say_hi) # same result
bob.send('say_hi') # same result

p bob.is_a?(MyClass) # T
p bob.is_a?(MySuperClass) # T
p bob.is_a?(MyModule) # T
p bob.instance_of?(MyClass) # T
p bob.instance_of?(MySuperClass) # F
p bob.instance_of?(MyModule) # F
p MyClass.superclass # MySuperClass
