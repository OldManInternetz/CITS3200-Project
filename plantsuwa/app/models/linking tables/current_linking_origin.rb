class CurrentLinkingOrigin < ActiveRecord::Base
  belongs_to :current_plant
  belongs_to :origin
end
