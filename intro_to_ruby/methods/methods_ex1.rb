def greeting(name)
  # return "howdy, " << name << "!"
  "howdy, " << name << "!" # implicit return
end

puts greeting("Bender Rodriguez")