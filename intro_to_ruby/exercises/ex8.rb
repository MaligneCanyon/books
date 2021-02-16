my_hash = {
  a: 1,
  b: 2,
  c: 3
}

my2_hash = {
  :d => 4,
  :e => 5,
  :f => 6
}

p my_hash
p my2_hash

# ambiguous question, alt meaning possible
h = Hash.new
i = {}
p h, i
