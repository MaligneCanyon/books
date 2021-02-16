def leap_years (start_year, end_year)
  arr = []
  start_year.upto(end_year) do |year|
    arr << year if (year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0))
  end
  return arr
end


while true
  puts "enter a start year"
  syear = gets.to_i
  puts "enter an end year"
  eyear = gets.to_i
  if eyear < syear
    puts "invalid, re-enter"
  else
    p leap_years(syear,eyear)
  end
end
