
movie_hash = {
  Jaws: 1901, # really old movie
  Terminator: 1954, # old movie
  Alien: 1999 # newer movie
}
movie_array = [] # init here, so that the array is visible w/i the blk below

puts movie_hash
#movie_hash.each do |title, year| # iterate over the hash
movie_hash.each_value do |year| # iterate over the hash values
  puts year
  movie_array.push(year) # push the year into an array
end
print movie_array
puts ''
puts movie_array
