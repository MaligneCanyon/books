puts 'enter your year of birth'
year = gets.chomp
puts 'enter your month of birth'
month = gets.chomp
puts 'enter your day of birth'
day = gets.chomp

birth = Time.local(year,month,day)
age = Time.now - birth # in seconds
age /= (365.25 * 24 * 3600) # in years
puts "age = #{age.to_i}"
