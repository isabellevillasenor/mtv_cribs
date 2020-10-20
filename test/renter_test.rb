require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'

class RenterTest < MiniTest::Test
  def setup
    @renter1 = Renter.new("Jessie")
  end

  def test_it_exists_with_attributes
    assert_instance_of Renter, @renter1
    assert_equal "Jessie", @renter1.name
  end
end
