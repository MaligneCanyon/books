class Integer

  def factorial
    if self < 0
      return -1
    elsif self < 2
      return 1
    else
      self * (self - 1).factorial
    end
  end

end

puts 6.factorial
