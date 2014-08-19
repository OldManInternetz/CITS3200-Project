class CurrentLinkingClimate < ActiveRecord::Base
  belongs_to :current_plant
  belongs_to :current_climate
end
