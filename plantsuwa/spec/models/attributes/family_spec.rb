require 'spec_helper'

describe Family do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @family = FactoryGirl.create(:family)
    @current_plant.families << @family
  end

  subject { @family }

  it { should be_valid }
  it { should respond_to(:name) }
  it { should respond_to(:current_plants) }

  its(:current_plants) { should include @current_plant }

  describe "when name is blank" do
    before { @family.name = " " }
    it { should_not be_valid }
  end

  describe "when name is more than 100 characters" do
    before { @family.name = "*" * 101 }
    it { should_not be_valid }
  end

end
