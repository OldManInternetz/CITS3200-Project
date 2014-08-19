require 'spec_helper'

describe CurrentClimate do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @current_climate = FactoryGirl.create(:current_climate)
    @current_plant.current_climates << @current_climate
  end

  subject { @current_climate }

  it { should be_valid }
  it { should respond_to(:name) }
  it { should respond_to(:current_plants) }

  its(:current_plants) { should include @current_plant }

  describe "when name is blank" do
    before { @current_climate.name = " " }
    it { should_not be_valid }
  end

  describe "when name is more than 100 characters" do
    before { @current_climate.name = "*" * 101 }
    it { should_not be_valid }
  end

end
