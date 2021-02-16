arr = [1, 3, 5, 7, 9, 11]
number = 3

puts "#{number} is " + (arr.include?(number) ? "" : "not ") + "in the array"

# alt
arr.each do |v|
  if v == number
    puts "included"
    break
  end
end
