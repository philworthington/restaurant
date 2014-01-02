require 'spec_helper'

describe Place do
  before do
   @place = Place.new(name: "McDonalds")
  end

  subject { @place }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when name is not present" do
    before { @place.name = " " }
    it { should_not be_valid }
  end

  describe "when name is already taken" do
    before do
      place_with_same_name = @place.dup
      place_with_same_name.name = @place.name.upcase
      place_with_same_name.save
    end

    it { should_not be_valid }
  end
end


