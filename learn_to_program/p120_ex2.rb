def clock(&block)
  $OFFSET = 2 # change this for testing purposes
  current_hour = (Time.new.hour + $OFFSET) % 12
  current_hour = 12 if current_hour == 0 # as per a 12-hour clock face
  current_hour.times do
    block.call
  end
  puts "the current_hour is #{current_hour}"
end


clock { puts "dong!" }
clock { puts "cuckoo!" }
