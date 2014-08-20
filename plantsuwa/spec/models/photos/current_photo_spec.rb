require 'spec_helper'

describe CurrentPhoto do

  before do
    @current_plant = FactoryGirl.create(:current_plant)
    @photo = @current_plant.current_photos.build(description: "A photo of a rose")
  end

  subject { @photo }

  it { should respond_to(:description) }

end
