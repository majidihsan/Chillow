require 'spec_helper'

describe Truck do
  let(:box) { Box.new(Occupant.new("Majid", "Ihsan")) }
  let(:box2) { Box.new(Occupant.new("Bill", "Gates")) }
  let(:honda) { Truck.new(20) }
  describe ".new" do
    it "should have tell us the capacity of the truck " do
      expect(honda.loading_capacity).to eq(20)
      expect(honda.container).to be_a Array
    end
  end

  describe "#add_box" do
    it "should add a box to the truck" do
      box = Box.new(Occupant.new("Majid", "Ihsan"))
      honda.add_box(box)
      expect(honda.container[0]).to be_a(Box)
    end
  end

  describe "#remove_box" do
    it "should remove a box from the truck container" do
      box2 = Box.new(Occupant.new("Majid", "Ihsan"))
      honda.add_box(box)
      honda.add_box(box2)
      honda.remove_box
      expect(honda.container.length).to eq(1)
    end
  end

  describe "#full?" do
    it "should check it the container is full?" do
      expect(honda.full?).to be false
      10.times do
        honda.add_box(box)
        honda.add_box(box2)
      end
      expect(honda.full?).to be true
    end
  end

  describe '#empty' do
    it "should empty all the boxes from the truck" do
      expect(honda.full?).to be(false)
      10.times do
        honda.add_box(box)
        honda.add_box(box2)
      end
      expect(honda.full?).to be(true)
      honda.empty
      expect(honda.container.size).to eq 0
    end
  end
end
