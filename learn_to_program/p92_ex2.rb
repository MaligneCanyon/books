def shuffle(sorted)

  shuffled = []

  #p sorted
  until sorted.length == 0
    ndx = rand(0...sorted.length)
    #p "sorted.length = #{sorted.length}, ndx = #{ndx}"
    shuffled << sorted[ndx]
    sorted.delete_at(ndx)
  end
  shuffled
end


song_names = Dir["media/**/*.wma"]
puts song_names
if song_names.length > 0
  puts "found #{song_names.length} files"
  3.times { song_names = shuffle(song_names) }
  File.open("playlist.m3u", "w") do |f|
    song_names.each do |s|
      f << s + "\n"
    end
  end
  puts "done!"
else
  puts "no files found"
end
