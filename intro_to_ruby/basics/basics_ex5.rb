# printout the factorial of the input number
def factorial(x)
  print "#{x}! = "
  product = 1
  (x - 1).times {
    product *= x
    #puts "product = #{product}, x = #{x}"
    x -= 1
  }
  puts "#{product}"
  return product
end

factorial(5)
factorial(6)
factorial(7)
factorial(8)

# alt: move puts statement outside the factorial method
puts "#{factorial(9)}"

# alt:
# def factorial(x)
#   print "#{x}! = "
#   product = 1
#   x.downto(2) { |v| product *= v }
#   puts "#{product}"
# end
# factorial(9)