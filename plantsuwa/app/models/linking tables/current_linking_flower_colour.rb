class CurrentLinkingFlowerColour < ActiveRecord::Base
  belongs_to :current_plant
  belongs_to :flower_colour
end
