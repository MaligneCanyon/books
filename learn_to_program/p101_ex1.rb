def roman_to_integer(numeral)

  arr = [
          ['M', 1000],
          ['D', 500 ],
          ['C', 100 ],
          ['L', 50  ],
          ['X', 10  ],
          ['V', 5   ],
          ['I', 1   ]
        ]
  # syms = {
  #         "M" => 1000,
  #         "D" => 500,
  #         "C" => 100,
  #         "L" => 50,
  #         "X" => 10,
  #         "V" => 5,
  #         "I" => 1
  #        }
  # last3_ndxs = {
  #               "ndx"    => 0,
  #               "p_ndx"  => 0,
  #               "p2_ndx" => 0
  #              }

  num = 0
  chars = numeral.split("")
  p2_ndx = 0
  p_ndx = 0
  ndx = 0
  p_count = 0
  count = 1 # assume at least one valid char
  prefix = false
  for j in 0...chars.length
    # check whether the current letter is valid
    #p "chars[#{j}] = #{chars[j]}"
    ok = false
    for i in 0...arr.length
      if chars[j] == arr[i][0]
        ndx = i
        ok = true
        break
      end
    end
    unless ok
      # CASE 1
      puts "invalid character (#{chars[j]})"
      return -1
    end

    # count the occurences of the current char
    if j > 0 && p_ndx == ndx # repeated char
      count += 1
    else
      count = 1
    end
    #p "j = #{j}, p2_ndx = #{p2_ndx}, p_ndx = #{p_ndx}, ndx = #{ndx}, " +
    #  "count = #{count}, p_count = #{p_count}"
    # if the previous array index was greater than the current one,
    # then the previous letter was a prefix (or there's an invalid sequence)
    if j > 0
      if p_ndx > ndx
        prefix = true

        # CASE 2
        # something like CCM is invalid
        if (p_count > 1)
          puts "invalid prefix (too many #{chars[j-1]}'s)"
          return -2

        # CASE 3
        # something like IL or XM is invalid
        # the only valid prefixes for the current letter are
        #   ndx % 2 == 0  &&  p_ndx - ndx = 2   # something like IX
        #   ndx % 2 == 1  &&  p_ndx - ndx = 1   # something like IV
        elsif (p_ndx - ndx + (ndx % 2) != 2)
          puts "invalid prefix (#{chars[j-1]} for #{chars[j]})"
          return -3

        # CASE 4
        # something like VIV or VIX is invalid (should be IX or XIV)
        # the sequence is invalid if the 2nd-previous array index is
        # >  the current one and the integer equiv of its symbol starts w/ "1"
        #   ndx % 2 == 0 && p2_ndx >  ndx
        # >= the current one and the integer equiv of its symbol starts w/ "5"
        #   ndx % 2 == 1 && p2_ndx >= ndx
        elsif j > 1 && (p2_ndx + (ndx % 2) > ndx) # note: XIV and XIX are valid
          puts "invalid prefixed sequence (#{numeral.slice((j-2), 3)})"
          return -4

        else # subtract the value of the current letter from the running total
          num -= arr[p_ndx][1]
        end

      # CASE 5a
      # something like IVI,IVV,IXI or IXV is invalid (should be V,IX,X or XIV)
      # if a prefix was previously found, and the current array index is <= that
      # of the prefix character, then the sequence is invalid
      # CASE 5b
      # something like IXX is invalid
      # if the current array index is < the 2nd-previous array index, then the
      # sequence in invalid
      elsif (prefix && p2_ndx >= ndx) || p2_ndx > ndx # note: III is valid
        puts "invalid prefixed sequence (#{numeral.slice((j-2), 3)})"
        return -5

      # CASE 6a
      # something like VV is invalid, should be X
      # CASE 6b
      # something like IIII is invalid, should be IV (prefixed)
      elsif (count > 1 && ndx % 2 == 1) || count > 3
        puts "invalid sequence (too many #{chars[j]}'s)"
        return -6

      else # add the value of the previous letter to the running total
        num += arr[p_ndx][1]
        prefix = false # any previous prefix is no longer relevant
      end
    end
    p2_ndx = p_ndx
    p_ndx = ndx
    p_count = count
    #p "num = #{num}"
  end

  num += arr[ndx][1] # add the value of the last letter to the running total
end


while true
  puts "please enter a Roman numeral, or 'q' to quit"
  str = gets.chomp.upcase
  break if str == "Q"
  next if str == ""
  puts "#{str}  #{roman_to_integer(str)}"
end
