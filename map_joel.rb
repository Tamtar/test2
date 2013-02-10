class Map
  def initialize
    @grid = Hash.new(false)
    @current_x = @current_y = 4
    @current_position = [@current_x, @current_y]
    set_monsters
    set_treasure
  end
  def my_position?
    @current_position
  end
  def set_monsters
    @grid[[5,4]] = :monster
  end
  def set_treasure
    @grid[[4,4]] = :treasure
  end
  def go direction
    case direction
    when :north
      @current_y = @current_y + 1
      @current_position = [@current_x, @current_y]
    when :south
      @current_y-=1
      @current_position = [@current_x, @current_y]
    when :east
      @current_x+=1
      @current_position = [@current_x, @current_y]
    when :west
      @current_x-=1
      @current_position = [@current_x, @current_y]
    end
    return @grid[@current_position]
  end
end



