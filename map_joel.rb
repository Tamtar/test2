class Map
  @grid = Hash.new
  @current_position = @grid[[3,4]]

  def my_position?
    @current_position
  end
end
