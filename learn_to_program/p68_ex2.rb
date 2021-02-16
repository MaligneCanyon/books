def ask_int(question, min, max)
  while true
    puts question
    str = gets.chomp
    num = str.to_i
    if (num.to_s == str && num.between?(min, max))
      return num
    else
      puts "invalid, please re-enter"
    end
  end
end


num = ask_int("please enter a positive integer < 10000", 1, 9999)


def old_roman_numerals(number)
  m = number / 1000
  number %= 1000
  d = number / 500
  number %= 500
  c = number / 100
  number %= 100
  l = number / 50
  number %= 50
  x = number / 10
  number %= 10
  v = number / 5
  number %= 5
  i = number

  "M"*m + "D"*d + "C"*c + "L"*l + "X"*x + "V"*v + "I"*i
end

p old_roman_numerals(num)
