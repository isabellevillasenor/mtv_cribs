require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'
require './lib/building'

class BuildingTest < MiniTest::Test
  def setup
    @building = Building.new
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    @unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
  end

  def test_it_can_add_unit
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    expected = [@unit1, @unit2]

    assert_equal expected, @building.units
  end

  def test_it_can_add_renter
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    @renter1 = Renter.new("Aurora")
    @renter2 = Renter.new("Tim")
    @unit1.add_renter(@renter1)
    @unit2.add_renter(@renter2)
    expected = ["Aurora", "Tim"]

    assert_equal expected, @building.renters
  end

  def test_it_has_average_rent
    assert_equal 1099.5, @building.average_rent
  end

  def test_it_can_add_renters_to_unit
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    @building.add_unit(@unit3)
    @renter1 = Renter.new("Spencer")
    @unit2.add_renter(@renter1)
    expected = @renter1

    assert_equal expected, @unit1.renter
  end
end
