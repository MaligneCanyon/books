require 'yaml'

test_array = ['give quiche a chance',
              'Good-bye, alien',
              'So long, and thanks for all the fish!']

test_str = test_array.to_yaml
filename = 'test.txt'
File.open(filename, 'w') do |f|
  f.write test_str
end

read_str = File.read(filename)
read_array = YAML::load(read_str)

p (read_str == test_str)
p (read_array == test_array)
