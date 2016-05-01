require 'spec_helper'

describe Occupant do
  let(:camp) { Dwelling.new("33 Harrison Ave", "Boston", "MA", 02111) }
    describe ".New" do
      it "should have a address" do
        expect(camp.address).to be_a String
      end
      it "it should have a city " do
      expect(camp.city).to eq("Boston")
      end

      it "should have state" do
      expect(camp.state).to eq("MA")
      end

      it "should have zipcode" do
      expect(camp.zipcode).to eq(02111)
      end
    end
  end
