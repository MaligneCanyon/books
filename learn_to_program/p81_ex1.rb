def english_number(number)
  if number < 0
    return 'enter a non-negative number'
  end
  if number == 0
    return 'zero'
  end

  # support numbers < 1 quadrillion
  ones      = ['one','two','three','four','five','six','seven','eight','nine']
  teenagers = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen',
               'seventeen','eighteen','nineteen']
  tens      = ['ten','twenty','thirty','forty','fifty']
  biggies   = ['hundred','thousand','million','billion','trillion']

  str = ''
  left = number

  exp = biggies.length-1
  while exp > 0 # 1000 and up
    write = left/(1000**exp)
    left %= 1000**exp
    if write > 0
      str << english_number(write) + ' ' + biggies[exp]
      if left > 0
        str << ' '
      end
    end
    exp -= 1
  end

  write = left/100
  left %= 100
  if write > 0
    str << ones[write-1] + ' ' + biggies[0]
    if left > 0
      str << ' '
    end
  end
  if left > 0
    str << 'and ' unless str == ''
  end

  write = left/10
  left %= 10
  if write > 0
    if ((write == 1) && (left > 0))
      str << teenagers[left-1]
      left = 0
    elsif (write > 5) # just for fun
      str << ones[write-1] + ((write == 8) ? 'y' : 'ty')
    else
      str << tens[write-1]
    end
    if left > 0
      str << '-'
    end
  end

  write = left
  # left = 0 # irrelevant at this point
  if write > 0
    str << ones[write-1]
  end

  str
end


111.downto(1) { |ndx| p english_number(ndx) }
p english_number(3211)
p english_number(999_999)
p english_number(1_000_000_000)
p english_number(1_234_567_890)
p english_number(1_000_000_000_000)
p english_number(123_456_789_012_345)
