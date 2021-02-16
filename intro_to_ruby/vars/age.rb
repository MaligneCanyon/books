puts "how old are you ? (please enter your age)"
age = gets.to_f # account for infants 0 < age < 1 yr
i = 0
if age > 0
  age = age.to_i
  4.times do
    i += 10
    puts "in #{i} years you will be #{i + age}"
  end
else
  puts "invalid age"
end

puts "please enter your first name"
str = gets.chomp
puts "please enter your last name"
str << " " << gets.chomp
str = "all work and no play makes " << str << " a programmer"
10.times do
  puts str
end
