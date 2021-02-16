def recursive_sort(unsorted, sorted)
  new_unsorted = []

  min = unsorted[0]
  for ndx in 1...unsorted.length
    if (unsorted[ndx].upcase < min.upcase)
      new_unsorted << min
      min = unsorted[ndx]
    else
      new_unsorted << unsorted[ndx]
    end
  end
  sorted << min
  #p new_unsorted, sorted

  recursive_sort(new_unsorted, sorted) if new_unsorted.length > 0

  return sorted
end

arr = ['a','e','i','a','z','v','A','b']
p recursive_sort(arr, [])
arr = ['bat','apple','iguana','aaaa','zzzz','victory','ApPle','batman','apple']
p recursive_sort(arr, [])
arr = ['bat','Apple','Iguana','aaaa','iGUANa','victory','batman','apple','ApPle']
p recursive_sort(arr, [])
arr = ['bat','Bat','BAt','bAt']
p recursive_sort(arr, [])
arr = ['Iguana','iGUANa','iguana']
p recursive_sort(arr, [])
