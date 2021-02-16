def capitalize(str)
  str.upcase! if str.length > 10 # convert longer strings to ALL CAPS
  return str
end

puts capitalize("test")
puts capitalize("a big test")
puts capitalize("a really big test")
