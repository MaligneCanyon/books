class Person
  # attr_reader :name # 'reader' does not allow us to set the @name instance var
  # use attr_writer or attr_accessor instead
  attr_writer :name

  # alternatively, def an explicit name= method
  # def name=(name)
  #   @name = name
  # end

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
p bob
