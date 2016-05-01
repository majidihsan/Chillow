class Dwelling

  attr_reader :address, :city, :state, :zipcode

  def initialize(address, city, state, zipcode)
    @address = address
    @city = city
    @state = state
    @zipcode = zipcode
  end
end
