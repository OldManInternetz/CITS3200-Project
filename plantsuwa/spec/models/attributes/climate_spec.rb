require 'spec_helper'

describe Climate do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @climate = FactoryGirl.create(:climate)
    @current_plant.climates << @climate
  end

  subject { @climate }

  it { should be_valid }
  it { should respond_to(:name) }
  it { should respond_to(:current_plants) }

  its(:current_plants) { should include @current_plant }

  describe "when name is blank" do
    before { @climate.name = " " }
    it { should_not be_valid }
  end

  describe "when name is more than 100 characters" do
    before { @climate.name = "*" * 101 }
    it { should_not be_valid }
  end

end
