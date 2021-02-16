def age(year, month, day)
  #p year, month, day
  birth = Time.local(year,month,day)
  age = Time.now - birth # in seconds
  age /= (365.25 * 24 * 3600) # in years
  p sprintf("age = %.2f", age)
  return age.to_i
end


str = ""
arr = []
birth_dates = {}
File.open("p101_ex2.txt", "r") do |f|
  f.readlines.each do |str|
    arr = str.split(",")
    sub_arr = arr[1].split(" ")
    arr[2] = (arr[2])[1..4] # yyyy
    birth_dates[arr[0]] = [sub_arr[0], sub_arr[1], arr[2]] # "person" => [mmm, dd, yyyy]
  end
end
p birth_dates

while true
  p "enter a name (first and last), or 'q' to quit"
  person = gets.chomp
  break if person == "q"
  if birth_dates.has_key?(person)
    current_age = age(birth_dates[person][2], birth_dates[person][0], birth_dates[person][1])
    p "#{person} will be #{current_age+1} on #{birth_dates[person][0]} #{birth_dates[person][1]}"
  else
    p "can't find that name"
  end
end
