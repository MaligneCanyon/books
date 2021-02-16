def get_name(sub_name)
  puts "please enter your #{sub_name} name"
  gets.chomp.downcase.capitalize
end

puts "Hello, #{get_name("first")} #{get_name("middle")} #{get_name("last")} !"
