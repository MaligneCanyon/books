class OrangeTree

  def initialize(age)
    #@tree = {} # tree w/ properties such as age, height, num of oranges, etc
    @arr = [
            "winter",
            "spring",
            "summer",
            "autumn"
           ]
    @season = rand(0..3)
    @age = age
    @height = age * 1.1
    seasoning
    dying
  end

  def pick_an_orange
    if @season == 0 || @season == 1 || @oranges < 1
      puts "no oranges right now"
    elsif @season == 2 # summer
      @oranges -= 1
      puts "orange was delicious"
      puts "#{@oranges} left"
    else # fall
      @oranges -= 1
      puts "orange was very good"
      puts "#{@oranges} left"
    end
  end

  def passage_of_time
    puts "time is passing ..."
    @season += 1
    @season = 0 if @season > 3
    @age += 1 if @season == 1
    seasoning
    dying
  end

  #######
  private
  #######

  def count_the_oranges
    if @age < 5
      @oranges = 0
    else
      @oranges = @age + ((@age - 5)**rand(1.5..2.0)).to_i
    end
  end

  def seasoning
    if @season == 0
      winter
    elsif @season == 1
      spring
    elsif @season == 2
      summer
    else # @season == 3
      autumn
    end
  end

  def dying
    @prob_death += @age / 20.0 # initialize by season
    @prob_death = 0 if @prob_death < 0
    puts "#{"%.2f" % @prob_death}\% chance the tree will die this #{@arr[@season]} ..."
    prob_living = 100 - rand(0..100)
    #puts "#{prob_living}"
    if prob_living < @prob_death
      puts "the tree has died"
      exit
    end
  end

  def spring
    @leaves = 0.3
    @oranges = 0
    @height = @height + 0.2
    @prob_death = -rand(0.0..0.5)
    data
  end

  def summer
    @leaves = 1.0
    @oranges = count_the_oranges
    @height = @height + 0.7
    @prob_death = -rand(0.0..0.5)
    data
  end

  def autumn
    @leaves = 0.5
    @oranges = count_the_oranges / 2
    @height = @height + 0.1
    @prob_death = rand(0.0..0.5)
    data
    puts "oranges and leaves are falling ..."
  end

  def winter
    @leaves = 0
    @oranges = 0
    #@height = @height # no winter growth
    @prob_death = rand(0.5..1.0)
    data
  end

  def data
    puts "#{@arr[@season]} is here"
    puts "our tree is #{@age} years old and #{"%.1f" % @height} feet tall"
    puts "it has #{@oranges} oranges"
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


age = ask_int("please enter a starting age", 0, 40)
orange_tree = OrangeTree.new(age)

while true
  action = ask_int("\nplease select an action:\n" +
                       "\t1 let time pass\n" +
                       "\t2 pick an orange\n" +
                       "\t3 cut down tree\n" +
                       "\t0 exit", 0, 3)

  # arr[action] # this doesn't work, so use 'case' instead
  case action
  when 1
    orange_tree.passage_of_time
  when 2
    orange_tree.pick_an_orange
  when 3
    puts "you are evil"
    exit
  else
    exit
  end
end
