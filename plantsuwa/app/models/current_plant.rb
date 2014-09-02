class CurrentPlant < ActiveRecord::Base


  """ Associations """

	has_many :current_linking_climates, dependent: :destroy
  has_many :climates, through: :current_linking_climates

	has_many :current_linking_flower_colours, dependent: :destroy
  has_many :flower_colours, through: :current_linking_flower_colours

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

	has_many :current_photos
  accepts_nested_attributes_for :current_photos, :reject_if => lambda { |t| t['description'].blank? and t['image'].nil? }, allow_destroy: true

  has_attached_file :display_photo
  validates_attachment :display_photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
  validates_attachment_size :display_photo, :less_than => 5.megabytes


  """ Validations """

  validates :name, length: { maximum: 100 }
  validates :family, length: { maximum: 100 }
  validates :genus, length: { maximum: 100 }
  validates :species, length: { maximum: 100 }
  validates :common_name, length: { maximum: 100 }
  validates :scientific_name, length: { maximum: 100 }
  validates :synonym, length: { maximum: 100 }  
  validates :subspecies, length: { maximum: 100 }
  validates :description, length: { maximum: 2000 }
  validates :location_name, length: { maximum: 100 }
  validates :characteristics, length: { maximum: 2000 }
  validates :additional_info, length: { maximum: 2000 }
  validates :identification, length: { maximum: 2000 }
  validates :physical, length: { maximum: 2000 }
  validates :general_info, length: { maximum: 2000 }
  validates :environment, length: { maximum: 2000 }
  validates :horticulture, length: { maximum: 2000 }
  validates :architectural_uses, length: { maximum: 2000 }
  validates :culture, length: { maximum: 2000 }
  validates :conservation, length: { maximum: 2000 }
  validates :wildlife, length: { maximum: 2000 }
  validates :architectural_info, length: { maximum: 2000 }
  validates :discovered_by, length: { maximum: 100 }
  validates :named_by, length: { maximum: 100 }
  validates :display_photo_description, length: { maximum: 300 }


  """ Search """
  
  scoped_search on: :name
  scoped_search on: :family
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
  scoped_search in: :current_photos, on: :description
  scoped_search in: :leaf_colours, on: :name
  scoped_search in: :flower_colours, on: :name
  scoped_search in: :climates, on: :name



end
