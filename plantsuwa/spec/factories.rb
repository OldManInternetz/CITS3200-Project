FactoryGirl.define do
  factory :current_plant do
    common_name "Rose"
  end
  factory :current_climate do
    name "Cool"
    current_plant
  end
end
