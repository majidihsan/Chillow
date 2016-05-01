require_relative "dwelling"
require_relative "occupant"


class Apartment < Dwelling
  attr_accessor :lease_start_date, :lease_end_date, :add_roomate, :remove_roomate, :space, :person
  attr_reader :rent, :max_capacity
  def initialize(address, city, state, zip_code, rent, lease_start_date, lease_end_date, max_capacity = 5)
    super(address, city, state, zip_code)
    @rent = rent
    @space = []
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @max_capacity = max_capacity
  end
  def full?
    if space.length == max_capacity
      raise MaxCapacityError, "At Max Capacity!"
    else
      "There are #{max_capacity-space.length} vacancies"
    end
  end
  def add_roomate(first_name, last_name)
     if @space.length == @max_capacity
       raise MaxCapacityError, "At Max Capacity, no more roomates!"
     else
      @space << Occupant.new(first_name, last_name)
     end
  end
  def remove_roomate(full_name)
    @space.reject!{ |n| n.full_name == full_name }
  end
end
apt = Apartment.new("34 Harrison Ave", "Boston", "MA", "03249", 600, "2016/02/02", "2016/02/03", 6)
class MaxCapacityError < StandardError
end
