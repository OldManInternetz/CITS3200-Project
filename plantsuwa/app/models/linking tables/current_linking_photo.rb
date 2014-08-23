class CurrentLinkingPhoto < ActiveRecord::Base
  belongs_to :current_plant
  belongs_to :photo
end
