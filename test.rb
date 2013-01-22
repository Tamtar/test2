load 'map.rb'

map1 = Map.new
puts map1.dimensions
map1.set_rewards
puts map1.reward?(5,8)