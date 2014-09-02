require 'spec_helper'

describe CurrentLinkingFlowerColour do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @flower_colour = FactoryGirl.create(:flower_colour)
    @link = CurrentLinkingFlowerColour.new(current_plant_id: @current_plant.id, flower_colour_id: @flower_colour.id)

  end

  subject { @link }

  it { should respond_to(:current_plant_id) }
  it { should respond_to(:flower_colour_id) }
  its (:current_plant_id) { should eq 1}
  its (:flower_colour_id) { should eq 1}

end
