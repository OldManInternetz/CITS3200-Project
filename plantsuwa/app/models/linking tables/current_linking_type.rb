class CurrentLinkingType < ActiveRecord::Base
  belongs_to :current_plant
  belongs_to :type
end
