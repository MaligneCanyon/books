class Animal
  def speak(sound)
    sound
  end
end

class GoodDog < Animal
end

class Cat < Animal
end

sparky = GoodDog.new
paws = Cat.new
puts sparky.speak("meow") # good one Sparky !
puts paws.speak("hee-haw")
