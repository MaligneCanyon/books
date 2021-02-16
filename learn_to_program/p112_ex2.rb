class Dragon

  def initialize(fname)
    @name = fname
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0
    puts "#{@name} is born"
  end

  def feed
    puts "you feed #{@name}"
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "you walk #{@name}"
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "you put #{@name} to bed"
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores"
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly"
    end
  end

  def toss
    puts "you toss #{@name} up in the air"
    passage_of_time
  end

  def rock
    puts "you rock #{@name} gently"
    @asleep = true
    puts "#{@name} briefly dozes off ..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "... but wakes up when you stop"
    end
  end

  private
  def hungry?
    @stuff_in_belly < 3
  end

  def poopy?
    @stuff_in_intestine > 7
  end

  def passage_of_time
    puts "stuff_in_belly = #{@stuff_in_belly}"
    puts "stuff_in_intestine = #{@stuff_in_intestine}"
    if @stuff_in_belly > 0
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly"
      end
      puts "#{@name} is starving; in desperation, #{@name} eats YOU"
      exit
    end
    if @stuff_in_intestine > 10
      @stuff_in_intestine = 0
      puts "whoops! #{@name} went pooh"
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly"
      end
      puts "#{@name}'s stomach grumbles ..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly"
      end
      puts "#{@name} does the potty dance ..."
    end
  end

end # class


def ask_int(question, min, max)
  while true
    puts question
    str = gets.chomp
    num = str.to_i
    if (num.to_s == str && num.between?(min, max))
      return num
    else
      puts "invalid, please re-enter"
    end
  end
end


puts "please enter a name for your pet"
moniker = gets.chomp
pet = Dragon.new moniker

# arr = [
#         pet.feed,
#         pet.toss,
#         pet.walk,
#         pet.put_to_bed,
#         pet.rock
#       ]

while true
  action = ask_int("\nplease select an action:\n" +
                 "\t1 feed\n" +
                 "\t2 toss\n" +
                 "\t3 walk\n" +
                 "\t4 put to bed\n" +
                 "\t5 rock\n" +
                 "\t0 exit", 0, 5)

  # arr[action] # this doesn't work, so use 'case' instead
  case action
  when 1
    pet.feed
  when 2
    pet.toss
  when 3
    pet.walk
  when 4
    pet.put_to_bed
  when 5
    pet.rock
  else
    exit
  end
end
