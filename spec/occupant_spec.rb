require 'spec_helper'

describe Occupant do
  let(:occupant) { Occupant.new(first_name, last_name) }
    describe ".New" do
      it "should have a first name and last_name" do
      occupant = Occupant.new("majid", "ihsan")
      expect(occupant.first_name).to eq("majid")
      expect(occupant.last_name).to eq("ihsan")
     end
    end
  end
