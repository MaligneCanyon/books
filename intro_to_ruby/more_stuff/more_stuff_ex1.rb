def find_lab_in(str)
  puts str if /lab/i =~ str
end

find_lab_in("laboratory")
find_lab_in("experiment")
find_lab_in("Pans Labyrinth")
find_lab_in("elaborate")
find_lab_in("polar bear")

# alt:
arr = [
    "laboratory",
    "experiment",
    "Pans Labyrinth",
    "elaborate",
    "polar bear",
]
p arr
arr.each {|str| p str if str =~ /lab/i}
