
require 'test/unit'
require 'part3'


class TestPart3 < Test::Unit::TestCase

  def test_combine_anagrams_nil_returns_nil
    assert_equal nil, combine_anagrams(nil)
  end

  def test_combine_anagrams_empty_returns_empty
    assert_equal [], combine_anagrams([])
  end
  
  def test_combine_anagrams_returns_groups
    input = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
    output = [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]]
    assert output.sort!.eql?(combine_anagrams(input).sort!)
  end
  
end
