class Apartment
  attr_reader :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms,
              :hash,
              :renter
  def initialize(hash)
    @number = hash[:number]
    @monthly_rent = hash[:monthly_rent]
    @bathrooms = hash[:bathrooms]
    @bedrooms = hash[:bedrooms]
    @hash = hash
    @renter = renter
  end

  def add_renter(person)
    @renter = person
  end
end
