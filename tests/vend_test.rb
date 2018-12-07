require 'minitest/autorun'
require 'minitest/pride'
require './lib/snack.rb'
require './lib/slot.rb'
require './lib/machine.rb'
require './lib/vend.rb'

class VendTest <  Minitest::Test

  def test_it_starts_with_json_data
    vend1 = Vend.new
    vend1.startup("./data/tiny_vending_machine.json")
  end

end
