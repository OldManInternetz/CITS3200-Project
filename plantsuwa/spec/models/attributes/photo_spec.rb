require 'spec_helper'

describe Photo do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @photo = FactoryGirl.create(:photo)
    @current_plant.photos << @photo
  end

  subject { @photo }

  it { should respond_to(:description) }
  its(:current_plant) { should eq @current_plant }


end

