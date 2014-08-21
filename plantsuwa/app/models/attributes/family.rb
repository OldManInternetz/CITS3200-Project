class Family < ActiveRecord::Base
	has_many :current_linking_families, dependent: :destroy
  has_many :current_plants, through: :current_linking_families
 	validates :name, presence: true, length: { maximum: 100 }
end
