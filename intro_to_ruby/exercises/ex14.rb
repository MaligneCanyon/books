a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# a = a.map(&:split).flatten.uniq
a.map!(&:split).flatten!.uniq!
p a