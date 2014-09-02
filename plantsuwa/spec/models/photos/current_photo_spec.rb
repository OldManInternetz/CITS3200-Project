require 'spec_helper'

describe CurrentPhoto do

	describe "a photo with a valid current_plant" do

	  before do
	    @current_plant = FactoryGirl.create(:current_plant)
	    @photo = @current_plant.current_photos.build(description: "A photo of a bean", image: fixture_file_upload('test_image.jpg', 'image/jpg'))
	  end

	  subject { @photo }
	  it { should respond_to(:description) }
	  its(:current_plant) { should eq @current_plant }

	end

  describe "a photo with an invalid current_plant" do

  	before do
  		@wayward_photo = CurrentPhoto.new(current_plant_id: 6401, description: "A photo of a bean", image: fixture_file_upload('test_image.jpg', 'image/jpg'))
  	end

  	subject { @wayward_photo}  	
  	it {should_not be_valid}

  end

end
