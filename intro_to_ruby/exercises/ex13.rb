arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr2 = arr.clone

def deleter(arr, key)
  # p arr
  arr.delete_if { |str| str.start_with?(*key) } # mutates the arr; uses the splat op
  p arr
end

deleter(arr, ['s'])
deleter(arr2, ['s', 'w'])