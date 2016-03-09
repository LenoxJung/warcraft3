# http://classic.battle.net/war3/human/units/footman.shtml
require_relative 'unit'

class Footman < Unit
  
  def initialize
    super(60,10)
  end
  
  def attack!(enemy)
    if enemy.instance_of?(Barracks)
      enemy.damage((@attack_power/2.0).ceil)
    else
      super
    end
  end

end
