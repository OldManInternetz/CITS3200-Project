require 'spec_helper'

describe FlowerColour do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @flower_colour = FactoryGirl.create(:flower_colour)
    @current_plant.flower_colours << @flower_colour
  end

  subject { @flower_colour }

  it { should be_valid }
  it { should respond_to(:name) }
  it { should respond_to(:current_plants) }

  its(:current_plants) { should include @current_plant }

  describe "when name is blank" do
    before { @flower_colour.name = " " }
    it { should_not be_valid }
  end

  describe "when name is more than 100 characters" do
    before { @flower_colour.name = "*" * 101 }
    it { should_not be_valid }
  end

end
