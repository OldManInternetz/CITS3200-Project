class SoilType < ActiveRecord::Base
	has_many :current_linking_soil_types
  has_many :current_plants, through: :current_linking_soil_types
 	validates :name, presence: true, length: { maximum: 100 }
end
