=begin
Write a program that takes a number from the user between 0 and 100 and reports
back whether the number is between 0 and 50, 51 and 100, or above 100.
=end

def range(x)
  ans = case x
  when 0..50
    "between 0 and 50"
  when 51..100
    "between 51 and 100"
  else
    "out of range"
  end
  puts "#{x} is " << ans
end

loop do
  puts "enter an integer between 0 and 100, or type 'q' to quit"
  num = gets.chomp
  # if (num =~ /[0-9]/) # test for numerical input
  if (num =~ /\b[0-9]+\.?[0-9]*\b/) # test for numerical input
    range(num.to_i) # convert numerical input to an integer
  elsif (num == 'q') # quit program
    break
  else
    puts 'try again'
  end
end