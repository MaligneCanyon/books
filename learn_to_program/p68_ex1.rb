# returns T or F based on Y or N answer
def ask(question)
  while true
    p question
    reply = gets.chomp.downcase
    if (reply == "yes" || reply == "no")
      return (reply == "yes") ? true : false
    else
      p "please answer \"yes\" or \"no\""
    end
  end
end

p ask("do you like ...")
