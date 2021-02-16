puts "say something to grandma"
while true
  tell_grandma = gets.chomp
  if tell_grandma == tell_grandma.upcase # you are shouting
    break if tell_grandma == "BYE"
    year = rand(1930..1950)
    grandma_says = "NOT SINCE #{year}"
  else
    grandma_says = "HUH?! SPEAK UP, SONNY?"
  end
  puts grandma_says
end