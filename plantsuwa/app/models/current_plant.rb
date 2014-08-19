class CurrentPlant < ActiveRecord::Base
	has_many :current_sizes, dependent: :destroy
	has_many :current_soil_types, dependent: :destroy
	has_many :current_leaf_colours, dependent: :destroy
	has_many :current_flower_colours, dependent: :destroy
	has_many :current_photos, dependent: :destroy
	has_many :current_familys, dependent: :destroy
	has_many :current_genus, dependent: :destroy
	has_many :current_origins, dependent: :destroy
	has_many :current_types, dependent: :destroy
	has_many :current_climates, dependent: :destroy
end
