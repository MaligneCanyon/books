contents = [
            [1, "Getting Started", 1],
            [2, "Numbers", 9],
            [3, "Letters", 13]
           ]

title = "Table of Contents"

puts title.center(50)
puts
for sub_array in contents do
  lstr = "Chapter #{sub_array[0]}:  #{sub_array[1]}"
  rstr = "page " + "#{sub_array[2]}".rjust(2)
  puts lstr.ljust(40) + rstr.rjust(10)
end
