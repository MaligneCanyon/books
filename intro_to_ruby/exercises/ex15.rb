arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr2 = arr
p arr
arr.delete_if { |v| v.start_with?("s") }
p arr

arr = arr2
arr.delete_if { |v| v.start_with?("s", "w") }
p arr
