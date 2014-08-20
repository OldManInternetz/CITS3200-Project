class CurrentLinkingGenus < ActiveRecord::Base
  belongs_to :current_plant
  belongs_to :genus
end
