class CurrentLinkingLeafColour < ActiveRecord::Base
  belongs_to :current_plant
  belongs_to :leaf_colour
end
