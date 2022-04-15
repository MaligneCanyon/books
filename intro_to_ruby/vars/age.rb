puts "how old are you ? (please enter your age)"
age = gets.to_f # account for infants 0 < age < 1 yr
incr = 0
if age > 0
  age = age.to_i
  4.times do
    incr += 10
    puts "in #{incr} years you will be #{age + incr}"
  end
else
  puts "invalid age"
end