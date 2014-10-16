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
  
  has_many :favourites, dependent: :destroy
  has_many :users, through: :favourites, source: :favourite

  belongs_to :type

  """ Photos """

	has_many :current_photos, dependent: :destroy
  has_many :notifications, dependent: :destroy

  accepts_nested_attributes_for :current_photos, :reject_if => lambda { |t| t['description'].blank? and t['image'].nil? }, allow_destroy: true

  has_attached_file :display_photo, :default_url => "/images/missing_2.png",
    :styles => {
      :thumb    => ['80x80#'],
      :grid    => ['200x200#'],
      :medium  => ['400x400#']
    }
  validates_attachment :display_photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
  validates_attachment_size :display_photo, :less_than => 5.megabytes
  
  
  """ CSV """
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |plant|
        csv << plant.attributes.values_at(*column_names)
      end
    end
  end


  """ Validations """

  validates :name, length: { maximum: 200 }
  validates :family, length: { maximum: 200 }
  validates :genus, length: { maximum: 200 }
  validates :species, length: { maximum: 200 }
  validates :common_name, length: { maximum: 200 }
  validates :scientific_name, length: { maximum: 400 }
  validates :synonym, length: { maximum: 200 }  
  validates :subspecies, length: { maximum: 200 }
  validates :description, length: { maximum: 10000 }
  validates :location_1, length: { maximum: 200 }
  validates :location_2, length: { maximum: 200 }
  validates :location_3, length: { maximum: 200 }
  validates :location_4, length: { maximum: 200 }
  validates :location_5, length: { maximum: 200 }
  validates :location_6, length: { maximum: 200 }
  validates :characteristics, length: { maximum: 10000 }
  validates :additional_info, length: { maximum: 10000 }
  validates :identification, length: { maximum: 10000 }
  validates :physical, length: { maximum: 10000 }
  validates :general_info, length: { maximum: 10000 }
  validates :environment, length: { maximum: 10000 }
  validates :horticulture, length: { maximum: 10000 }
  validates :architectural_uses, length: { maximum: 10000 }
  validates :culture, length: { maximum: 10000 }
  validates :conservation, length: { maximum: 10000 }
  validates :wildlife, length: { maximum: 10000 }
  validates :architectural_info, length: { maximum: 10000 }
  validates :discovered_by, length: { maximum: 200 }
  validates :named_by, length: { maximum: 200 }
  validates :display_photo_description, length: { maximum: 300 }


  """ Search """
  
  scoped_search on: :name
  scoped_search on: :family
  scoped_search on: :created_at
  scoped_search on: :updated_at
  scoped_search on: :species
  scoped_search on: :common_name, :alias => :common, :complete_value => true
  scoped_search on: :scientific_name, :alias => :scientific, :complete_value => true
  scoped_search on: :synonym
  scoped_search on: :subspecies
  scoped_search on: :description
  scoped_search on: :location_1, :alias => :location
  scoped_search on: :location_2, :alias => :location
  scoped_search on: :location_3, :alias => :location
  scoped_search on: :location_4, :alias => :location
  scoped_search on: :location_5, :alias => :location
  scoped_search on: :location_6, :alias => :location
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
  scoped_search on: :named_by, :alias => :named
  scoped_search on: :plant_id
  scoped_search on: :submitted_by, :alias => :submitted
  scoped_search on: :edited_by, :alias => :edited
  scoped_search on: :scientific_name, alias: :scientific
  scoped_search on: :genus
  
  scoped_search in: :type, on: :name
  scoped_search in: :soil_types, on: :name
  scoped_search in: :sizes, on: :name
  scoped_search in: :origins, on: :name
  scoped_search in: :current_photos, on: :description
  scoped_search in: :leaf_colours, on: :name
  scoped_search in: :flower_colours, on: :name
  scoped_search in: :climates, on: :name

  # For the autocomplete search
  scope :unique_families, -> { group(:family) }
  scope :unique_genera, -> { group(:genus) }
  scope :unique_species, -> { group(:species) }


  before_validation :generate_name

  def generate_name
    if self.scientific_name.blank?
    self.scientific_name = "#{self.genus} #{self.species}"
    end
  end

  #default_scope -> { order('scientific_name ASC') }

end
