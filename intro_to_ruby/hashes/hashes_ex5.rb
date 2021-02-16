h = {
  k1: 1,
  k2: 2,
  k3: 3,
  k4: 4,
  k5: 5,
  k6: 6
}

10.times { | v | p "hash contains #{v}? #{h.has_value?(v)}" }
