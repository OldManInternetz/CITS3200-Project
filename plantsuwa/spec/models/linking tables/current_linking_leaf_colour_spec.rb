require 'spec_helper'

describe CurrentLinkingLeafColour do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @leaf_colour = FactoryGirl.create(:leaf_colour)
    @link = CurrentLinkingLeafColour.new(current_plant_id: @current_plant.id, leaf_colour_id: @leaf_colour.id)

  end

  subject { @link }

  it { should respond_to(:current_plant_id) }
  it { should respond_to(:leaf_colour_id) }
  its (:current_plant_id) { should eq 1}
  its (:leaf_colour_id) { should eq 1}

end
