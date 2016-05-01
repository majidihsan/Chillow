require 'spec_helper'

describe House do
  let(:home) { House.new("10 Durham St", "Boston", "MA", "02115", 50000) }
  describe ".new" do
    it "should be a Dwelling" do
      expect(home).to be_a(Dwelling)
    end
    it "should ask for a price" do
      expect(home.ask_price).to eq(50000)
    end
  end
end
