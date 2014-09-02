require 'spec_helper'

describe CurrentLinkingSize do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @size = FactoryGirl.create(:size)
    @link = CurrentLinkingSize.new(current_plant_id: @current_plant.id, size_id: @size.id)

  end

  subject { @link }

  it { should respond_to(:current_plant_id) }
  it { should respond_to(:size_id) }
  its (:current_plant_id) { should eq 1}
  its (:size_id) { should eq 1}

end
