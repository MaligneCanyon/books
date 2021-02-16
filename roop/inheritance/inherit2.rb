class Animal
  attr_accessor :name

  def initialize(name)
    self.name = "Oops"
  end
end

class BadDog < Animal
  def initialize(age, name)
    @age = age
    @name = name # 'name' is initialized in the BadDog class
    super(name)  # 'name' is (re-)initialized in the Animal class
  end
end

p BadDog.new(2, "Booboo")
