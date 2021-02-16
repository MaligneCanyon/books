# num = 99
# while num > 0 do
#   str = num > 1 ? "bottles" : "bottle"
#   puts "#{num} #{str} of beer on the wall,"
#   puts "#{num} #{str} of beer,"
#   puts "if one of those bottles should happen to fall"
#   puts "how many bottles of beer on the wall ?"
#   puts
#   num -= 1
# end

99.downto(1) do |num|
  str = num > 1 ? "bottles" : "bottle"
  puts "#{num} #{str} of beer on the wall,"
  puts "#{num} #{str} of beer,"
  puts "if one of those bottles should happen to fall"
  puts "how many bottles of beer on the wall ?"
  puts
end