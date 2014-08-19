class CurrentClimate < ActiveRecord::Base
	belongs_to :current_plant
  validates :current_plant_id, presence: true
  validates :name, presence: true, length: { maximum: 100 }
	validate :current_plant_id_exists

	def current_plant_id_exists
		begin
		  CurrentPlant.find(self.current_plant_id)
		rescue ActiveRecord::RecordNotFound
		  errors.add(:current_plant_id, "current_plant_id must exist in the CurrentPlant table")
		  false
		end
	end
end
