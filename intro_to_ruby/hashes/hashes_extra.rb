words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join # split words into letters, sort and rejoin them into a key

  # if result.has_key?(key) # if key already exists,
  #   result[key].push(word) # push word into array under that key
  # else # otherwise,
  #   result[key] = [word] # create a new key and array under it, put word in that array
  # end

  # create a new key and array under it if the key doesn't exist
  result[key] = [] unless result.has_key?(key)
  result[key].push(word) # push word into array under that key

  # p word
  # p result
end

result.each { |k, v| puts "#{k}:#{v}" }