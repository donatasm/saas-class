
class Dessert
  
  HEALTHY_CALORIES = 200
  
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def name
    @name
  end
  
  def calories
    @calories
  end
  
  def name=(value)
    @name = value
  end
  
  def calories=(value)
    @calories = value
  end
  
  def healthy?
    @calories < HEALTHY_CALORIES
  end
  
  def delicious?
    true
  end
  
end


class JellyBean < Dessert
  
  BLACK_RICORICE = "black licorice"
  
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end
  
  def flavor
    @flavor
  end
  
  def flavor=(value)
    @flavor = value
  end
  
  def delicious?
    if @flavor == BLACK_RICORICE
      return false
    end
    return true
  end
  
end
