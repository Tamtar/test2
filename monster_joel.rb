class Monster
  @@life = 80
  def attack(damage)
    @@life = @@life - damage
  end
  def attack_back
    rand(10)
  end
  def life
    @@life
  end

end