puts "enter your name please"
puts "hi " << gets.chomp

puts "please enter your first name"
str = gets.chomp
puts "please enter your last name"
str << " " << gets.chomp
puts "hi " << str

str = "all work and no play makes " << str << " a programmer"
10.times do
  puts str
end