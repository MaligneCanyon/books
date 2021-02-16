def count_down(max, min = 0)
  if min > max # flip values
    min, max = max, min
  end
  print "#{max} "
  if max == min # min value reached
    puts "\ncounted down to #{min}"
    min
  else # recursive call
    count_down(max - 1, min)
  end
end

count_down(27)
count_down(-19)
count_down(30,3)
count_down(2,20)
count_down(8,8)
count_down(11,-5)
count_down(-9,19)
