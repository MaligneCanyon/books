def countdown(num)
  puts num
  # return if (num <= 0 || !num.is_a?(Integer))
  return unless num > 0 && num.is_a?(Integer)
  countdown(num - 1)
end

countdown(7)
countdown(-19)
countdown(4.2)