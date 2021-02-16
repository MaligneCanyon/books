def shuffle(sorted)

  shuffled = []

  p sorted
  until sorted.length == 0
    ndx = rand(0...sorted.length)
    #p "sorted.length = #{sorted.length}, ndx = #{ndx}"
    shuffled << sorted[ndx]
    sorted.delete_at(ndx)
  end

  shuffled
end

arr = ['a','e','i','a','z','v','A','b']
p shuffle(arr.sort!)
arr = ['bat','apple','iguana','aaaa','zzzz','victory','ApPle','batman', 'apple']
p shuffle(arr.sort!)
