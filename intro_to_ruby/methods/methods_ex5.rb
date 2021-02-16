def scream(words)
  words = words + "!!!!"
  puts words
  return # method returns after printing msg
end

puts nil == scream("Yippeee") # but return value is nil
