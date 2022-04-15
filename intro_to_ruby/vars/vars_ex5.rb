x = 0
3.times do
  x += 1
end
puts x # should print 3

yy = 0
3.times do
  yy += 1
  xx = yy
end
puts xx # should raise error; xx not visible outside 3.times code block
