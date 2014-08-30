require 'spec_helper'

describe CurrentPlant do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @photo = FactoryGirl.create(:current_photo)
    @current_plant.current_photos << @photo
  end

  subject { @current_plant }

  its(:current_photos) { should include @photo }

end
