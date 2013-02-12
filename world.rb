load 'Monster.rb'
load 'Hero_prototype.rb'
load 'Yeti.rb'
# load 'Item.rb'
# load 'Buckler.rb'
# load 'Sword.rb'
load 'Combat.rb'

class World

	def world_sim
    combat = Combat.new
    yeti_1 = Yeti.new
    # buckler_1 = Buckler.new
    # sword_1 = Sword.new
    map = Map.new
    hero_1 = HeroPrototype.new map
		done = false
		while !done
  		puts "enter n, s, e, w, or done"
  		input = gets.chomp
  		case input
  		when 's'
    		result = hero_1.move(:south)
    		# puts "#{result} here. Current location #{map.my_position?}"
    		if result == :monster
      			combat.battle(hero_1, yeti_1)
    		end
  		when 'n'
    		result = hero_1.move(:north)
    		# puts "#{result} here. Current location #{map.my_position?}"
    		if result == :monster
      			combat.battle(hero_1, yeti_1)
    		end
  		when 'e'
    		result = hero_1.move(:east)
    		# puts "#{result} here. Current location #{map.my_position?}"
    		if result == :monster
      			combat.battle(hero_1, yeti_1)
    		end
  		when 'w'
    		result = hero_1.move(:west)
    		# puts "#{result} here. Current location #{map.my_position?}"
    		if result == :monster
      			combat.battle(hero_1, yeti_1)
    		end
      when 'done'
        done = true
  		else
    		puts "typed in something bogus."
  		end
end
	end
end