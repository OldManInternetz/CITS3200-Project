require 'spec_helper'

describe Type do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @type = FactoryGirl.create(:type)
    @current_plant.types << @type
  end

  subject { @type }

  it { should be_valid }
  it { should respond_to(:name) }
  it { should respond_to(:current_plants) }

  its(:current_plants) { should include @current_plant }

  describe "when name is blank" do
    before { @type.name = " " }
    it { should_not be_valid }
  end

  describe "when name is more than 100 characters" do
    before { @type.name = "*" * 101 }
    it { should_not be_valid }
  end

end
