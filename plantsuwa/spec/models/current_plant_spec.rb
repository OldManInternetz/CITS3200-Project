require 'spec_helper'

describe CurrentPlant do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @photo = FactoryGirl.create(:photo)
    @current_plant.photos << @photo
  end

  subject { @current_plant }

  its(:photos) { should include @photo }

end
