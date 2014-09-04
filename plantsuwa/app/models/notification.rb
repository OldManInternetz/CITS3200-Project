class Notification < ActiveRecord::Base

	belongs_to :user
	belongs_to :current_plant
	validates :user_id, presence: true
	validates :current_plant_id, presence: true
	validates :action, presence: true, length: { maximum: 7 }
	validates :changes, length: { maximum: 1000 }				# Currently not in use. Can expand in future?

end
