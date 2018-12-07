require 'minitest/autorun'
require 'minitest/pride'
require './lib/snack.rb'

class SnackTest <  Minitest::Test
  def test_it_exists
    candy_cig = Snack.new("Popeye's Candy Cigarrettes")
    assert_instance_of Snack, candy_cig
  end

  def test_it_has_a_name
    candy_cig = Snack.new("Popeye's Candy Cigarrettes")
    actual = candy_cig.name
    expected = "Popeye's Candy Cigarrettes"
    assert_equal expected, actual
  end

end
