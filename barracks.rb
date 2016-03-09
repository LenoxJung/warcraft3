class Barracks
  
  attr_reader :gold, :food, :health_points, :lumber
  
  def initialize
    @gold = 1000
    @food = 80
    @health_points = 500
    @lumber = 500
  end

  def train_footman
    @gold -= 135
    @food -= 2
    if can_train_footman?
      Footman.new
    end
  end

  def can_train_footman?
    gold >= 135&&food>=2
  end
  
  def train_peasant
    if can_train_peasant?    
      @gold -= 90
      @food -= 5
      return Peasant.new
    end
    nil
  end

  def can_train_peasant?
    gold >= 90&&food>=5
  end

  def damage(attack_power)
    @health_points -= attack_power
  end

  def train_siegeengine
    if can_train_siegeengine?
      @gold -= 200
      @food -= 3
      @lumber -=60
      return SiegeEngine.new
    end
    nil
  end

  def can_train_siegeengine?
    gold >= 200&&food>=3&&lumber>=60
  end

  def dead?
    @health_points < 1
  end

end
