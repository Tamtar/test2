load 'Monster.rb'

monster_1 = Monster.new
monster_2 = Monster.new


puts monster_1.health
puts monster_2.health
monster_1.attack(monster_2)

$end