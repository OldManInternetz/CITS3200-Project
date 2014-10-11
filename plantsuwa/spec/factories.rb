include ActionDispatch::TestProcess

FactoryGirl.define do

  # Plants

  factory :current_plant do
    common_name "Rose"
    name "Rose"
  end

  # Attributes

  factory :climate do
    name "Cool"
  end
  factory :flower_colour do
    name "Red"
  end
  factory :leaf_colour do
    name "Fluorescent pink"
  end
  factory :origin do
    name "Exotic"
  end
  factory :size do
    name "Small"
  end
  factory :soil_type do
    name "Dry"
  end
  factory :type do
    name "Climber"
  end

  # Users

  factory :user do
    username "Test User"
    password "qwijibo"
    password_confirmation "qwijibo"
    email "test@test.com"
  end


  """ Not using this, as it's easier to just build photos for plants inside the test files """
  #factory :current_photo do
    #description "Cool"
    #image { fixture_file_upload(Rails.root.join('spec/fixtures/test_image.jpg'), 'image/jpg') }
  #end

end
