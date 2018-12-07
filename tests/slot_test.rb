require 'minitest/autorun'
require 'minitest/pride'
require './lib/snack.rb'
require './lib/slot.rb'

class SlotTest <  Minitest::Test
  def test_it_exists
    slot1 = Slot.new(:a2, 150, 8)
    assert_instance_of Slot, slot1
  end

  def test_it_has_a_attributes
    slot1 = Slot.new(:a2, 150, 8)
    name = slot1.name
    cost = slot1.cost
    capacity = slot1.capacity
    contents = slot1.return_contents
    assert_equal :a2, name
    assert_equal 150, cost
    assert_equal 8, capacity
    assert_equal nil, contents
  end

  def test_it_can_hold_snacks
    candy_cig1 = Snack.new("Popeye's Candy Cigarrettes")
    candy_cig2 = Snack.new("Popeye's Candy Cigarrettes")
    slot1 = Slot.new(:a2, 150, 8)
    slot1.fill(candy_cig1)
    slot1.fill(candy_cig2)
    assert_equal 2, slot1.return_contents.count
    assert_equal [candy_cig1, candy_cig2], slot1.return_contents
  end

end
