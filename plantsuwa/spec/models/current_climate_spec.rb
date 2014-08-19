require 'spec_helper'

describe CurrentClimate do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @current_climate = @current_plant.current_climates.build(name: "Cool")
  end

  subject { @current_climate }

  it { should be_valid }
  it { should respond_to(:name) }
  it { should respond_to(:current_plant_id) }

  its(:current_plant) { should eq @current_plant }

  describe "when name is blank" do
    before { @current_climate.name = " " }
    it { should_not be_valid }
  end

  describe "when name is more than 100 characters" do
    before { @current_climate.name = "*" * 101 }
    it { should_not be_valid }
  end

  describe "when current_plant_id is not present" do
    before { @current_climate.current_plant_id = nil }
    it { should_not be_valid }
  end

end
