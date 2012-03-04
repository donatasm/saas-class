
require 'test/unit'
require 'part1'


class TestPart1A < Test::Unit::TestCase

  def test_palindrome_nil
    assert !palindrome?(nil)
  end
  
  def test_palindrome_empty
    assert !palindrome?("")
  end

  def test_palindrome_panama
    assert palindrome?("A man, a plan, a canal -- Panama")
  end
  
  def test_palindrome_madam
   assert palindrome?("Madam, I'm Adam!") 
  end
  
  def test_palindrome_abracadabra
    assert !palindrome?("Abracadabra")
  end
  
  def test_palindrome_nonword
    assert !palindrome?("? , ")
  end
  
  def test_palindrome_single
    assert palindrome?("? x, ")
  end
  
end  
  

class TestPart1B < Test::Unit::TestCase   

  def test_count_words_nil
    assert_equal({}, count_words(nil)) 
  end
  
  def test_count_words_empty
    assert_equal({}, count_words(""))
  end
  
  def test_count_words_panama
    expected = {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
    assert_equal(expected, count_words("A man, a plan, a canal -- Panama"))
  end
  
  def test_count_words_doo_bee_doo
    expected = {'doo' => 3, 'bee' => 2}
    assert_equal(expected, count_words("Doo bee doo bee doo"))
  end
  
  def test_count_words_nonword
    assert_equal({}, count_words("? , "))
  end
  
end
