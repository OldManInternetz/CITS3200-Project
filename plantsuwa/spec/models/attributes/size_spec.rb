require 'spec_helper'

describe Size do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @size = FactoryGirl.create(:size)
    @current_plant.sizes << @size
  end

  subject { @size }

  it { should be_valid }
  it { should respond_to(:name) }
  it { should respond_to(:current_plants) }

  its(:current_plants) { should include @current_plant }

  describe "when name is blank" do
    before { @size.name = " " }
    it { should_not be_valid }
  end

  describe "when name is more than 100 characters" do
    before { @size.name = "*" * 101 }
    it { should_not be_valid }
  end

end
