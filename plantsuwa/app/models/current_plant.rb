class CurrentPlant < ActiveRecord::Base


	has_many :current_linking_climates
  has_many :climates, through: :current_linking_climates

	has_many :current_linking_families
  has_many :families, through: :current_linking_families

	has_many :current_linking_flower_colours
  has_many :flower_colours, through: :current_linking_flower_colours

	has_many :current_linking_genera
  has_many :genera, through: :current_linking_genera

	has_many :current_linking_leaf_colours
  has_many :leaf_colours, through: :current_linking_leaf_colours

	has_many :current_linking_origins
  has_many :origins, through: :current_linking_origins

	has_many :current_linking_sizes
  has_many :sizes, through: :current_linking_sizes

	has_many :current_linking_soil_types
  has_many :soil_types, through: :current_linking_soil_types

	has_many :current_linking_types
  has_many :types, through: :current_linking_types


	has_many :photos, dependent: :destroy





end
