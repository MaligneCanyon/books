a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

p a

# version 1
# a.each_index { |i| a[i] = a[i].split }
# a.flatten!.uniq!
# p a

# version 2
a.map! { |v| v.split }
a.flatten!.uniq!
p a
