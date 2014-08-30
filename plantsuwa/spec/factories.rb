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
  factory :family do
    name "Great family"
  end
  factory :flower_colour do
    name "Red"
  end
  factory :genus do
    name "Special one"
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

  # Photos

  factory :current_photo do
    description "Cool"
  end

end
