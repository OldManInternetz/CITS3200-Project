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

  #has_many :current_linking_photos, dependent: :destroy
	has_many :current_photos    #, through: :current_linking_photos
  accepts_nested_attributes_for :current_photos, :reject_if => lambda { |t| t['image'].nil? }, allow_destroy: true


  #validates :name, presence: true, length: { maximum: 50 }
  #validates :common_name, presence: true, length: { maximum: 50 }
  
  scoped_search on: :name
  scoped_search on: :created_at
  scoped_search on: :updated_at
  scoped_search on: :species
  scoped_search on: :common_name
  scoped_search on: :scientific_name
  scoped_search on: :synonym
  scoped_search on: :subspecies
  scoped_search on: :description
  scoped_search on: :location_name
  scoped_search on: :characteristics
  scoped_search on: :additional_info
  scoped_search on: :identification
  scoped_search on: :physical
  scoped_search on: :general_info
  scoped_search on: :environment
  scoped_search on: :horticulture
  scoped_search on: :architectural_uses
  scoped_search on: :culture
  scoped_search on: :conservation
  scoped_search on: :wildlife
  scoped_search on: :architectural_info
  scoped_search on: :discovered_by
  scoped_search on: :named_by
  scoped_search on: :plant_id
  scoped_search on: :submitted_by
  scoped_search on: :edited_by
  
  scoped_search in: :types, on: :name
  scoped_search in: :soil_types, on: :name
  scoped_search in: :sizes, on: :name
  scoped_search in: :origins, on: :name
  scoped_search in: :photos, on: :description
  scoped_search in: :leaf_colours, on: :name
  scoped_search in: :flower_colours, on: :name
  scoped_search in: :families, on: :name
  scoped_search in: :genera, on: :name
  scoped_search in: :climates, on: :name



  def reject_photos(attribute)
    attribute['image_file_name'].blank?
  end

end
