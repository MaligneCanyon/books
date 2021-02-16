
M = 'M' # 'land'
o = 'o' # 'water'

# world = [
#           [o,o,o,o,o,o,o,o,o,o,o],
#           [o,o,o,o,M,M,o,o,o,o,o],
#           [o,o,o,o,o,o,o,o,M,M,o],
#           [o,o,o,M,o,o,o,o,o,M,o],
#           [o,o,o,M,o,M,M,o,o,o,o],
#           [o,o,o,o,M,M,M,M,o,o,o],
#           [o,o,o,M,M,M,M,M,M,M,o],
#           [o,o,o,M,M,o,M,M,M,o,o],
#           [o,o,o,o,o,o,M,M,o,o,o],
#           [o,M,o,o,o,M,o,o,o,o,o],
#           [o,o,o,o,o,o,o,o,o,o,o]
#         ]

world = [
          [M,M,M,o,o,o,o,o,o,o,M],
          [o,o,o,M,M,M,o,o,o,o,M],
          [M,o,o,o,M,o,o,o,M,M,o],
          [M,M,o,M,o,o,o,M,o,M,o],
          [M,M,o,M,o,M,M,o,o,o,o],
          [o,o,o,o,M,M,M,M,o,o,o],
          [o,o,o,M,M,M,M,M,M,M,o],
          [o,o,o,M,M,o,M,M,M,o,o],
          [o,o,M,o,o,o,M,M,o,o,o],
          [M,M,o,o,o,M,M,M,M,o,o],
          [M,o,o,o,o,o,o,o,M,M,M]
        ]
def continent_size(world, x, y)
  # if world[y][x] != 'land'
  if (!x.between?(0, world.size-1) || # fell off edge of the world
      !y.between?(0, world.size-1) || # fell off edge of the world
      world[y][x] != 'M')
    return 0
  end

  puts "#{x}, #{y}"
  size = 1
  world[y][x] = 'c' # 'counted land'

  size += continent_size(world, x-1, y-1)
  size += continent_size(world, x  , y-1)
  size += continent_size(world, x+1, y-1)
  size += continent_size(world, x-1, y  )
  size += continent_size(world, x+1, y  )
  size += continent_size(world, x-1, y+1)
  size += continent_size(world, x  , y+1)
  size += continent_size(world, x+1, y+1)
  size
end

puts continent_size(world, 5, 5)
world.each { |v| p v }
puts continent_size(world, 0, 2)
world.each { |v| p v }
