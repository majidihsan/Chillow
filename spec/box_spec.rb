require 'spec_helper'

describe Box do

  let(:box) { Box.new(Occupant.new("Mike", "Jackson")) }
  describe ".new" do
    it "stores the name of its owner, which should be an
     occupant object)  " do
      expect(box.owner).to be_a(Occupant)
    end
  end
end
