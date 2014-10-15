class OrangeTree
  attr_reader :height, :fruits, :age
  def initialize
    @height = 0
    @age = 0
    @dead = false
    @fruits = 0
  end

  def one_year_passes!
    can_die
    unless @dead
      gets_old
      grows
      produces_fruits
    end
  end

  def produces_fruits
    if (6..10).include? @age
      @fruits = 100
    elsif (11..15).include? @age
      @fruits = 200
    else
      @fruits = 0
    end
  end

  def grows
    @height += 1 if @age <= 10
  end

  def gets_old
    @age += 1
  end

  def can_die
    if (50..100).include? @age
      @dead = true if rand(1..100) < @age
    elsif @age >= 100
      @dead = true
    end
  end

  def dead?
    return @dead
  end

  def pick_a_fruit!
    @fruits -= 1 if @fruits > 0
  end
end


def get_infos(orange_tree)
  puts "Age: #{orange_tree.age}"
  puts "Hauteur: #{orange_tree.height}"
  puts "Nb de fruits: #{orange_tree.fruits}"
end

mon_bel_oranger = OrangeTree.new

puts "Orange tree is born !! Yalla"

puts "10 years pass"

10.times do
  mon_bel_oranger.one_year_passes!
end

get_infos(mon_bel_oranger)

mon_bel_oranger.pick_a_fruit!
puts "Yummy.. delicious orange"

get_infos(mon_bel_oranger)

puts "now 50 years pass.."

41.times do
  mon_bel_oranger.one_year_passes!
end

get_infos(mon_bel_oranger)

if mon_bel_oranger.dead?
  puts "oups.. he is dead"
else
  puts "he survives"
end

# You should be able to measure the tree => ok
# Each year, the tree should age (it becomes older and taller, and eventually dies).
# A tree grows 1 meter per year until 10 years old. Then it stops.
# Before 50 years old, the proabability of dying as a year pass is zero.
# After 50 years old, the probability of dying increases
# No tree can live more than 100 years
# A tree will produce 100 fruits a year once it is 5 years old
# A tree will produce 200 fruits a year between 10 and 15 years old
# A tree will not produce any fruits after that
# You should be able to pick an fruit from the tree
# You should be able to count how many fruits on the tree there are left
# Every year, fruits which were not picked just fall off