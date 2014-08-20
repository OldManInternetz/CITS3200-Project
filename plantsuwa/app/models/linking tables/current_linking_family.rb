class CurrentLinkingFamily < ActiveRecord::Base
  belongs_to :current_plant
  belongs_to :family
end
