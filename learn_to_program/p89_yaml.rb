require 'yaml'


def yaml_save(obj, filename)
  File.open(filename, 'w') do |f|
    f.write(obj.to_yaml)
  end
end

def yaml_load(filename)
  yaml_str = File.read(filename)
  YAML::load(yaml_str)
end


test_array = ['give quiche a chance',
              'Good-bye, alien',
              'So long, and thanks for all the fish!']
filename = 'test.txt'


yaml_save(test_array, filename)
read_array = yaml_load(filename)
p (read_array == test_array)
p read_array
