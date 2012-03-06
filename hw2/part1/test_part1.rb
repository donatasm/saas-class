
require 'test/unit'
require 'part1'


class TestPart1A < Test::Unit::TestCase

  def test_5_dollars_to_euro
    assert_equal 5 * 1 / 1.292, 5.dollars.in(:euros)
  end

  def test_7_yen_to_dollar
    assert_equal 7 * 0.013 / 1, 7.yens.in(:dollars)
  end

  def test_3_yen_to_euros
    assert_equal 3 * 0.013 / 1.292, 3.yens.in(:euros)
  end

  def test_1_to_dollars
    assert_equal 1, 1.dollar.in(:dollars)
  end
  
end


class TestPart1B < Test::Unit::TestCase

  def test_palidrome_on_string
    assert !"foo".palindrome?
  end

  def test_palidrome_on_string
    assert "oofoo".palindrome?
  end
  
end
