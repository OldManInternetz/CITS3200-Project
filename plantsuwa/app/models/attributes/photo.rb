class Photo < ActiveRecord::Base
	#belongs_to :current_plant


  has_one :current_linking_photo, dependent: :destroy
  has_one :current_plant, through: :current_linking_photo

  #validates :current_plant_id, presence: true

	has_attached_file :image
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
	validates_attachment_size :image, :less_than => 5.megabytes

	#def current_plant_id_exists
	#	begin
	#	  CurrentPlant.find(self.current_plant_id)
	#	rescue ActiveRecord::RecordNotFound
	#	  errors.add(:current_plant_id, "current_plant_id must exist in the CurrentPlant table")
	#	  false
	#	end
	#end

end
