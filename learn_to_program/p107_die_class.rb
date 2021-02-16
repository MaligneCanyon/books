class Die

  def initialize
    roll
  end

  def roll
    @number = rand(1..6)
  end

  def showing
    @number
  end

  def cheat
    while true
      puts "enter an integer [1..6]"
      @number = gets.to_i
      break if @number.between?(1, 6)
      puts "invalid"
    end
    @number
  end

end

die = Die.new
# actually, 'puts die.roll' would work here too
# then we don't need to call roll from initialize, don't need the showing method
puts die.showing
puts die.cheat
