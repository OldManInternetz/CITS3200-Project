require 'spec_helper'

describe CurrentLinkingType do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @type = FactoryGirl.create(:type)
    @link = CurrentLinkingType.new(current_plant_id: @current_plant.id, type_id: @type.id)

  end

  subject { @link }

  it { should respond_to(:current_plant_id) }
  it { should respond_to(:type_id) }
  its (:current_plant_id) { should eq 1}
  its (:type_id) { should eq 1}

end
