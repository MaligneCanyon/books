# input = nil
# while input != "STOP" do
#   puts "type STOP to exit"
#   input = gets.chomp
# end

# alt w/ a "loop do"
i = 0
loop do
  i += 1
  puts 'enter `STOP` to exit program'
  break if gets.chomp == 'STOP'
end
puts "exiting after #{i} attempt" << ((i > 1) ? "s." : ".")