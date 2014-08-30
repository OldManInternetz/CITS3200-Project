require 'spec_helper'

describe CurrentPhoto do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @photo = FactoryGirl.create(:current_photo)
    @current_plant.current_photos << @photo
  end

  subject { @photo }

  it { should respond_to(:description) }
  its(:current_plant) { should eq @current_plant }


end

