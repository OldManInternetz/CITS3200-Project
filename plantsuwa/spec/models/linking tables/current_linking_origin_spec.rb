require 'spec_helper'

describe CurrentLinkingOrigin do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @origin = FactoryGirl.create(:origin)
    @link = CurrentLinkingOrigin.new(current_plant_id: @current_plant.id, origin_id: @origin.id)

  end

  subject { @link }

  it { should respond_to(:current_plant_id) }
  it { should respond_to(:origin_id) }
  its (:current_plant_id) { should eq 1}
  its (:origin_id) { should eq 1}

end
