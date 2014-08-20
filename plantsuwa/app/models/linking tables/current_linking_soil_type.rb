class CurrentLinkingSoilType < ActiveRecord::Base
  belongs_to :current_plant
  belongs_to :soil_type
end
