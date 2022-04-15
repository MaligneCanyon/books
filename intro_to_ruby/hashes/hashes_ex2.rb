h1 = {
  k1: 1,
  k2: 2,
  k3: 3,
}

h2 = {
  k4: 4,
  k5: 5,
  k6: 6,
}

# '.merge!' mutates the calling hash, '.merge' does not

p h1.merge(h2)
# => {:k1=>1, :k2=>2, :k3=>3, :k4=>4, :k5=>5, :k6=>6} h1 & h2 merged
p h1
# => {:k1=>1, :k2=>2, :k3=>3} h1 not mutated

p h1.merge!(h2)
# => {:k1=>1, :k2=>2, :k3=>3, :k4=>4, :k5=>5, :k6=>6} h1 & h2 merged
p h1
# => {:k1=>1, :k2=>2, :k3=>3, :k4=>4, :k5=>5, :k6=>6} h1 mutated
