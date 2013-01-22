load 'map.rb'
x = 5
y = 7

map1 = Map.new
puts "map dimensions are #{map1.dimensions}"
map1.set_rewards
if map1.reward?(x,y)
  puts "#{x}, #{y} has a reward!"
else
  puts "#{x}, #{y} does not have a reward!"
end
