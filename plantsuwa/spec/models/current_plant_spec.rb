require 'spec_helper'

describe CurrentPlant do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
		@photo = @current_plant.current_photos.build(description: "A photo of a bean", image: fixture_file_upload('test_image.jpg', 'image/jpg'))
  end

  subject { @current_plant }

  its(:current_photos) { should include @photo }

end
