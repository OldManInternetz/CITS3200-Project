require 'spec_helper'

describe CurrentLinkingClimate do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @climate = FactoryGirl.create(:climate)
    @link = CurrentLinkingClimate.new(current_plant_id: @current_plant.id, climate_id: @climate.id)

  end

  subject { @link }

  it { should respond_to(:current_plant_id) }
  it { should respond_to(:climate_id) }
  its (:current_plant_id) { should eq 1}
  its (:climate_id) { should eq 1}

end
