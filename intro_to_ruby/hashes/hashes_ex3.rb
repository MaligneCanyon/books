h = {
  k1: 1,
  k2: 2,
  k3: 3,
  k4: 4,
  k5: 5,
  k6: 6
}

h.each_key { | k | p k }
h.each_value { | v | p v }
h.each { | k, v | p "#{k}: #{v}" }

# alt:
puts h.keys
puts h.values
