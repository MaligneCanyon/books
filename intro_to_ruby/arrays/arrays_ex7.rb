a = [2,4,6,8,10,12]
b = [] # since b was initialized here ...

a.each { |val| b.push(val += 2) } # ... we can access it inside the block
p a
p b

# alt
arr = [1,2,3,4,5,9]
arr2 = arr.map {|v| v+2}
p arr, arr2
