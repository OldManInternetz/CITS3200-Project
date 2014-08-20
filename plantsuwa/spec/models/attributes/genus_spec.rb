require 'spec_helper'

describe Genus do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @genus = FactoryGirl.create(:genus)
    @current_plant.genera << @genus
  end

  subject { @genus }

  it { should be_valid }
  it { should respond_to(:name) }
  it { should respond_to(:current_plants) }

  its(:current_plants) { should include @current_plant }

  describe "when name is blank" do
    before { @genus.name = " " }
    it { should_not be_valid }
  end

  describe "when name is more than 100 characters" do
    before { @genus.name = "*" * 101 }
    it { should_not be_valid }
  end

end
