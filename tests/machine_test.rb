require 'minitest/autorun'
require 'minitest/pride'
require './lib/snack.rb'
require './lib/slot.rb'
require './lib/machine.rb'

class MachineTest <  Minitest::Test
  def test_it_exists
    machine1 = Machine.new
    assert_instance_of Machine, machine1
  end

  def test_it_holds_contents
    candy_cig1 = Snack.new("Popeye's Candy Cigarrettes")
    candy_cig2 = Snack.new("Popeye's Candy Cigarrettes")
    snickers1 = Snack.new("Snickers")
    slot1 = Slot.new(:a2, 150, 8)
    slot2 = Slot.new(:a1, 100, 10)
    slot1.fill(candy_cig1)
    slot1.fill(candy_cig2)
    slot2.fill(snickers1)
    machine1 = Machine.new
    machine1.add_slot(slot1)
    machine1.add_slot(slot2)
  end

end
