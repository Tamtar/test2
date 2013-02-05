load 'monster_joel.rb'

fred = Monster.new
result = "whatever"

puts "Press a to attack:"
while result != "done"
  result = gets.chomp
  case result
    when 'a'
      new_life = fred.attack 5
      puts "The monster has #{new_life} life left."
    else
      puts "else"
    end
end