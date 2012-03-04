
require 'test/unit'
require 'part4'


class TestPart4A < Test::Unit::TestCase

  def test_Dessert_name
    dessert = Dessert.new("Cake", 400)
    assert_equal "Cake", dessert.name
  end
  
  def test_Dessert_calories
    dessert = Dessert.new("Cake", 300)
    assert_equal 300, dessert.calories
  end
  
  def test_Dessert_200_calories_not_healthy
    dessert = Dessert.new("Cake", 200)
    assert !dessert.healthy?
  end
  
  def test_Dessert_not_healthy
    dessert = Dessert.new("Cake", 400)
    assert !dessert.healthy?
  end
  
  def test_Dessert_healthy
    dessert = Dessert.new("Cake", 199)
    assert dessert.healthy?
  end
  
  def test_Dessert_delicious
    dessert = Dessert.new("Cake", 300)
    assert dessert.delicious?
  end
  
end


class TestPart4B < Test::Unit::TestCase

  def test_JellyBean_flavor_not_delicious
    bean = JellyBean.new("Black", 50, "black licorice")
    assert_equal "Black", bean.name
    assert_equal 50, bean.calories
    assert_equal "black licorice", bean.flavor
    assert !bean.delicious?
  end
  
  def test_JellyBean_flavor_delicious
    bean = JellyBean.new("Black", 50, "white")
    assert_equal "white", bean.flavor
    assert bean.delicious?
  end
  
  def test_JellyBean_flavor_set
    bean = JellyBean.new("Black", 50, "")
    bean.flavor = "lemon"
    assert_equal "lemon", bean.flavor
  end
  
end
