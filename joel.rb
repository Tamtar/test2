load 'monster_joel.rb'

my_life = 80

fred = Monster.new
result = "whatever"

while result != "done"
puts "Press \n\ta to attack\n\tr to run\n\td to be done "
  result = gets.chomp
  case result
    when 'a'
      damage_to = rand(10)
      new_life = fred.attack damage_to
      puts "You hit the monster with #{damage_to}. The monster has #{new_life} life left."
    when 'd'
      result = "done"
    when 'r'
      puts "you ran!"
    else
      puts "else"
  end
  damage = fred.attack_back
  my_life = my_life - damage
  puts "The monster hit you with #{damage}. You now have #{my_life} life left."
  if my_life < 1
    puts "You are dead."
    result = "done"
  end
  if fred.life < 1
    puts "The monster is dead."
    result = "done"
  end

end