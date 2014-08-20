require 'spec_helper'

describe SoilType do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @soil_type = FactoryGirl.create(:soil_type)
    @current_plant.soil_types << @soil_type
  end

  subject { @soil_type }

  it { should be_valid }
  it { should respond_to(:name) }
  it { should respond_to(:current_plants) }

  its(:current_plants) { should include @current_plant }

  describe "when name is blank" do
    before { @soil_type.name = " " }
    it { should_not be_valid }
  end

  describe "when name is more than 100 characters" do
    before { @soil_type.name = "*" * 101 }
    it { should_not be_valid }
  end

end
