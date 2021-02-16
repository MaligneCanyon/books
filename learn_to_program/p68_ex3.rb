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


def roman_numerals(number)

  arr = [
          [1000, 0, 'M', ''],
          [ 500, 0, 'D', ''],
          [ 100, 0, 'C', ''],
          [  50, 0, 'L', ''],
          [  10, 0, 'X', ''],
          [   5, 0, 'V', ''],
          [   1, 0, 'I', '']
        ]
  str = ""

  for i in 0...arr.length
    # calc the number of times the current numeral should appear
    # then calc the remaining number
    #puts number
    arr[i][1] = number / arr[i][0]
    number %= arr[i][0]
    #puts "arr[#{i}] = #{arr[i]}"

    # if remaining number is 9xx or 4xx, look ahead in the array to find
    # the prefix for the current numeral (to be applied to the remainder)
    step = i.even? ? 2 : 1 # determine how far to look ahead
    if (i < arr.length - step) # don't look past the end of the array
      prefix_condition = arr[i][0] - arr[i+step][0]
      if (number >= prefix_condition) # remainder is 9xx or 4xx
        #puts "9xx or 4xx"
        arr[i][3] = arr[i+step][2] + arr[i][2] # prefixed portion (ex. IX)
        number -= prefix_condition
      end
    end

    if (arr[i][3] == "") # nothing yet, so no prefix
      #puts "default"
    end

    # create the string segment for the current numeral,
    # including the number of times it should appear on its own merit
    # and as part of the prefix (if any) for the remainder
    arr[i][3] = (arr[i][2] * arr[i][1]) + arr[i][3] # (with merit) + prefix
    #puts "arr[#{i}] = #{arr[i]}"
    str += arr[i][3]
  end

  str # return value
end


MAX = 3999
while true
  mode = ask_int("\nplease select a mode:\n" +
                 "\t2 for a range of numerals,\n" +
                 "\t1 for single numeral, or\n" +
                 "\t0 to exit", 0, 2)
  break if mode == 0
  i = ask_int("please enter a positive integer <#{MAX + 1}", 1, MAX)
  j = (mode == 1) ?
    i : ask_int("please enter another value, >=#{i} and #{MAX + 1}", i, MAX)
  i.upto(j) { |i| puts "#{i.to_s.ljust(7)} #{roman_numerals(i).ljust(20)}" }
end
