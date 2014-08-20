class CurrentLinkingSize < ActiveRecord::Base
  belongs_to :current_plant
  belongs_to :size
end
