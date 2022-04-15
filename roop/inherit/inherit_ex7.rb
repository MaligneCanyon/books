class Student
  attr_reader :name

  def initialize(n, g)
    @name = n
    @grade = g
  end

  def better_grade_than?(other)
    # dilema: can't use 'self' to call private method 'grade', so how do you
    #   ref the calling obj ?
    # solution: def 'grade' as protected rather than private
    # this.grade > other.grade # raises err if 'grade' is private OR protected
    grade > other.grade # raises err if 'grade' is private
  end

  # private
  protected # methods are available w/i class, unavailable outside class
  attr_reader :grade
end

bob = Student.new("Bobby", 70)
joe = Student.new("Joseph", 80)

puts joe.name # this works
# puts joe.grade # raises a NoMethodError
puts "Well done!" if joe.better_grade_than?(bob)
p joe # Note: can still access grade using 'p joe'
