class CurrentPlant < ActiveRecord::Base


	has_many :current_linking_climates, dependent: :destroy
  has_many :climates, through: :current_linking_climates

	has_many :current_linking_families, dependent: :destroy
  has_many :families, through: :current_linking_families

	has_many :current_linking_flower_colours, dependent: :destroy
  has_many :flower_colours, through: :current_linking_flower_colours

	has_many :current_linking_genera, dependent: :destroy
  has_many :genera, through: :current_linking_genera

	has_many :current_linking_leaf_colours, dependent: :destroy
  has_many :leaf_colours, through: :current_linking_leaf_colours

	has_many :current_linking_origins, dependent: :destroy
  has_many :origins, through: :current_linking_origins

	has_many :current_linking_sizes, dependent: :destroy
  has_many :sizes, through: :current_linking_sizes

	has_many :current_linking_soil_types, dependent: :destroy
  has_many :soil_types, through: :current_linking_soil_types

	has_many :current_linking_types, dependent: :destroy
  has_many :types, through: :current_linking_types

	has_many :current_photos, dependent: :destroy


  validates :name, presence: true, length: { maximum: 50 }
  validates :common_name, presence: true, length: { maximum: 50 }

end
