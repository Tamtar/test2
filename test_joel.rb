class Map
  @grid = Hash.new(false)
  @current_x = @current_y = 4

  @current_position = [@current_x, @current_y]
  def my_position?
    @current_position
  end
  def set_monsters
    @grid[[4,4]] = :monster
    @grid[[4,4]]
  end
  def go direction
    case direction
    when :north
      @current_y = @current_y + 1
    when :south
      # current_y-=1
    when :east
      # current_y+=1
    when :west
      # current_y-=1
    end
  end
end

yadda = Map.new
puts yadda.my_position?
puts yadda.set_monsters

yadda.go :north
puts yadda.my_position?