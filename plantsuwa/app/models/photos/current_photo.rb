class CurrentPhoto < ActiveRecord::Base
	belongs_to :current_plant

  validates :current_plant_id, presence: true
  validates :description, length: { maximum: 300 }

	has_attached_file :image
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
	validates_attachment_size :image, :less_than => 5.megabytes

	def current_plant_id_exists
		begin
		  CurrentPlant.find(self.current_plant_id)
		rescue ActiveRecord::RecordNotFound
		  errors.add(:current_plant_id, "current_plant_id must exist in the CurrentPlant table")
		  false
		end
	end
end
