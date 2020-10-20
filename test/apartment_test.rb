require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'

class ApartmentTest < MiniTest::Test
  def setup
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @renter1 = Renter.new("Jessie")
  end

  def test_it_exists_with_attributes
    assert_instance_of Apartment, @unit1
    assert_equal "A1", @unit1.number
    assert_equal 1200, @unit1.monthly_rent
    assert_equal 1, @unit1.bathrooms
    assert_equal 1, @unit1.bedrooms
    assert_equal nil, @unit1.renter
  end

  def test_it_can_add_renter
    @unit1.add_renter(@renter1)
    expected = @renter1

    assert_equal expected, @unit1.renter
  end
end
