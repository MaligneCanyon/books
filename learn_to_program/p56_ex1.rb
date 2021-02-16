array = []
puts "type in some text, then press <Enter>"
puts "or, just press <Enter> to exit"
while true
  text = gets.chomp
  break if text == ""
  array.push(text)
end
puts array.sort
