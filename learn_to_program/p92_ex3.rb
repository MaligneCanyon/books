def music_shuffle(sorted)

  shuffled = []

  # split sorted array into sub-arrays (by cd name)
  result = {}
  sorted.each do |val|
    arr = val.split("/")
    key = arr[1]
    if result.has_key?(key)
      result[key].push(val)
    else
      result[key] = [val]
    end
  end
  #result.each { |k, v| puts k, v } # output the sub-arrays

  #puts result.length
  until result.length == 0
    # randomly select a sub-array ...
    # pick a random key
    key_arr = result.keys
    key_ndx = rand(0...result.length)
    key = key_arr[key_ndx]
    #puts "key = #{key}"
    # then randomly select a song from the sub-array
    # pick a random song from the key's sub-array
    song_ndx = rand(0...result[key].length)
    #puts "result[key].length = #{result[key].length}; song_ndx = #{song_ndx}"
    song = result[key][song_ndx] # this is the song's path and filename
    #puts "song = #{song}"
    # copy the song from the sub-array to the shuffled array
    shuffled << song
    #p shuffled
    # and delete the song from the sub-array
    key_arr = result[key]
    #p key_arr
    key_arr.delete_at(song_ndx) # delete the song from the sub-array
    if result[key].length == 0
      result.delete(key) # delete the key if the sub-array is empty
    end
    #result.each { |k, v| puts k, v } # output the sub-arrays
  end

  shuffled
end


song_names = Dir["media/**/*.wma"]
#puts song_names
if song_names.length > 0
  puts "found #{song_names.length} files"
  song_names = music_shuffle(song_names)
  File.open("playlist.m3u", "w") do |f|
    song_names.each do |s|
      f << s + "\n"
    end
  end
  puts "done!"
else
  puts "no files found"
end
