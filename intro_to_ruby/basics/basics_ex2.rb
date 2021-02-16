def parse_num(x)
  puts (x / 1000).to_s + ' 1000s'
  puts (x % 1000 / 100).to_s + ' 100s'
  puts (x % 100 / 10).to_s + ' 10s'
  puts (x % 10).to_s + ' 1s'

  # alt method:
  # divisor = 1000
  # loop do
  #   puts "#{(x % (divisor * 10)) / divisor} #{divisor}s"
  #   break if divisor == 1
  #   divisor /= 10
  # end
end

loop do
  puts 'enter a four-digit integer from 1000 to 9999'
  x = gets.to_i
  if (x.is_a? Integer) && x.between?(1000, 9999)
    parse_num(x)
  else
    puts 'try again'
  end
end
