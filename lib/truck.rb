class Truck

  attr_reader :loading_capacity, :full
  attr_accessor :container

  def initialize(loading_capacity = 20)
    @loading_capacity = loading_capacity
    @container = []
  end

  def add_box(box)
    unless full?
    @container << box
    end
  end

  def remove_box
    @container.pop
  end

  def full?
    @container.length == @loading_capacity
  end

  def empty
    @container.clear
  end
end
