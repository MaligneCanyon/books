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
    grade > other.grade # would raise err if 'grade' was private
  end

  # private
  protected # methods are available w/i class, unavailable outside class
  attr_reader :grade
end

bob = Student.new("Bobby", 70)
joe = Student.new("Joseph", 80)

puts joe.name # works ok
# puts joe.grade # raises a NoMethodError # Note: can still access grade using 'p joe'
puts "Well done!" if joe.better_grade_than?(bob)
p joe