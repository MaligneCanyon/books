class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method
    # "Will this work? " + a_protected_method # this works too
  end

  def another_public_method
    # "Will this work? " + self.a_private_method # => NoMethodError
    "Will this work? " + a_private_method # must call private methods w/o using 'self'
  end

  protected
  def a_protected_method
    "Yes, I'm protected!"
  end

  private
  def a_private_method
    "Yes, I'm private!"
  end
end

fido = Animal.new
puts fido.a_public_method       # => Will this work? Yes, I'm protected!
puts fido.another_public_method # => Will this work? Yes, I'm private!
# puts fido.a_protected_method  # => NoMethodError
# puts fido.a_private_method    # => NoMethodError
