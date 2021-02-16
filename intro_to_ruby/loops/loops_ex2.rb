i = 0
loop do
  i += 1
  puts "type STOP to exit"
  if gets.chomp == 'STOP'
    break
  end
end
puts "exiting after #{i} attempt" + ((i > 1) ? "s." : ".")