h = {a:1, b:2, c:3, d:4}

p h[:b]
h[:e] = 5
p h

h.each do |k,v|
  h.delete(k) if v < 3.5
end
p h

# dangerous to modify an obj that you are traversing; instead, should use
h.delete_if {|k,v| v > 4.5}
p h
