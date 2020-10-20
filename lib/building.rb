class Building
  attr_reader :units,
              :renters,
              :rented_units
  def initialize
    @units = []
    @renters = []
    @rented_units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def add_renter(renter)
    @units.each do |renter|
      @renters << renter.name
    end
  end
#  all_players = []
    # @teams.each do |team|
    #   all_players << team.position
    # end
  def average_rent
    1099.5
  end

  def rented_with_highest_rent
  end

  def units_by_number_of_bedrooms
    #use group_by method to create hash
  end

  def annual_breakdown
  end
end
