require 'spec_helper'

describe LeafColour do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @leaf_colour = FactoryGirl.create(:leaf_colour)
    @current_plant.leaf_colours << @leaf_colour
  end

  subject { @leaf_colour }

  it { should be_valid }
  it { should respond_to(:name) }
  it { should respond_to(:current_plants) }

  its(:current_plants) { should include @current_plant }

  describe "when name is blank" do
    before { @leaf_colour.name = " " }
    it { should_not be_valid }
  end

  describe "when name is more than 100 characters" do
    before { @leaf_colour.name = "*" * 101 }
    it { should_not be_valid }
  end

end
