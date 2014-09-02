require 'spec_helper'

describe CurrentLinkingSoilType do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @soil_type = FactoryGirl.create(:soil_type)
    @link = CurrentLinkingSoilType.new(current_plant_id: @current_plant.id, soil_type_id: @soil_type.id)

  end

  subject { @link }

  it { should respond_to(:current_plant_id) }
  it { should respond_to(:soil_type_id) }
  its (:current_plant_id) { should eq 1}
  its (:soil_type_id) { should eq 1}

end
