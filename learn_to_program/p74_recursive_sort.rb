def recursive_sort(unsorted, sorted)
  new_unsorted = []

  min = unsorted[0]
  for ndx in 1...unsorted.length
    if (unsorted[ndx] < min) # found a new min
      new_unsorted << min # recycle the old min
      min = unsorted[ndx] # save the new min
    else
      new_unsorted << unsorted[ndx] # recycle the current value
    end
  end
  sorted << min # store the new min
  #p new_unsorted, sorted

  recursive_sort(new_unsorted, sorted) if new_unsorted.length > 0

  return sorted
end

arr = ['a','e','i','a','z','v','A','b']
p recursive_sort(arr, [])
p recursive_sort(arr, []) == arr.sort
arr = ['bat','apple','iguana','aaaa','zzzz','victory','ApPle','batman', 'apple']
p recursive_sort(arr, [])
p recursive_sort(arr, []) == arr.sort
