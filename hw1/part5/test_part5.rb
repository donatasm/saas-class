
require 'test/unit'
require 'part5'


class Foo
  attr_accessor_with_history :bar
end

class Boo
  attr_accessor_with_history :foo
  attr_accessor_with_history :moo
end


class TestPart5 < Test::Unit::TestCase
 
  def test_attr_accessor_with_history_setter_and_getter
    foo = Foo.new
    foo.bar = 1
    assert_equal 1, foo.bar
  end
  
  def test_attr_accessor_with_history_bar_history_not_nil
    foo = Foo.new
    assert_not_nil foo.bar_history
    assert_equal 1, foo.bar_history.length
  end
  
  def test_attr_accessor_with_history_returns_history
    foo = Foo.new
    foo.bar = 3
    foo.bar = :wowzo
    foo.bar = "boo!"
    assert_equal [nil, 3, :wowzo, "boo!"], foo.bar_history
  end
  
  def test_attr_accessor_with_history_multiple_instances_returns_history
    f = Foo.new
    f.bar = 1
    f.bar = 2
    f = Foo.new
    f. bar = 4
    f.bar_history
    assert_equal [nil, 4], f.bar_history
  end
 
  def test_attr_accessor_with_history_multiple_attr_returns_history
    boo = Boo.new
    boo.moo = 3
    boo.moo = :wowzo
    boo.moo = "boo!"
    boo.foo = :foo
    assert_equal [nil, 3, :wowzo, "boo!"], boo.moo_history
    assert_equal [nil, :foo], boo.foo_history
  end
  
end
