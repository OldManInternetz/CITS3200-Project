class Favourite < ActiveRecord::Base

  belongs_to :current_plant
  belongs_to :user
  
  validates :current_plant_id, presence: true
  validates :user_id, presence: true  

end
