arr1 = [ "bob", "sally", "jane" ]
arr2 = [ 1, 2, 3 ]

def print_arr(arr)
  arr.each_with_index { |val, ndx| puts "#{ndx}: #{val}" }
end

print_arr(arr1)
print_arr(arr2)