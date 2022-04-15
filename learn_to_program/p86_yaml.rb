require 'yaml'

test_array = [
  'give quiche a chance',
  'Good-bye, alien',
  'So long, and thanks for all the fish!'
]

test_hsh = {
  a: 'give quiche a chance',
  b: 'Good-bye, alien',
  c: 'So long, and thanks for all the fish!'
}

test_obj = test_array
# test_obj = test_hsh

test_str = test_obj.to_yaml
p test_str

filename = 'test.txt'
File.open(filename, 'w') do |f|
  f.write test_str
end

read_str = File.read(filename)
read_obj = YAML::load(read_str)

p (read_str == test_str)
p (read_obj == test_obj)

p  read_obj
p  test_obj
