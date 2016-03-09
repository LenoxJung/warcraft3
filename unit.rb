class Unit
  
  attr_reader :health_points, :attack_power
  
  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
    if self.dead?
      enemy.damage(0)
    else
      if !enemy.dead?
        enemy.damage(@attack_power)
      else 
        enemy.damage(0)
      end
    end
  end
  
  def damage(attack_power)
    @health_points -= attack_power
  end

  def dead?
    @health_points < 1
  end

end
