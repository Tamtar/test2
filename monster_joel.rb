class Monster
  @@life = 80
  def attack(damage)
    @@life = @@life - damage
  end
  def life
    @@life
  end

end