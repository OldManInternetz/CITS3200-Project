require 'spec_helper'

describe Origin do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @origin = FactoryGirl.create(:origin)
    @current_plant.origins << @origin
  end

  subject { @origin }

  it { should be_valid }
  it { should respond_to(:name) }
  it { should respond_to(:current_plants) }

  its(:current_plants) { should include @current_plant }

  describe "when name is blank" do
    before { @origin.name = " " }
    it { should_not be_valid }
  end

  describe "when name is more than 100 characters" do
    before { @origin.name = "*" * 101 }
    it { should_not be_valid }
  end

end
