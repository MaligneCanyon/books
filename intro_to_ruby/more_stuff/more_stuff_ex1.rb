strs = [
    "laboratory",
    "experiment",
    "Pans Labyrinth",
    "elaborate",
    "polar bear",
]

p strs
strs.each { |str| p str if /lab/i =~ str } # case-insensitive