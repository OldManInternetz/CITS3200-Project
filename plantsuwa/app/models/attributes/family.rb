class Family < ActiveRecord::Base
	has_many :current_linking_families
  has_many :current_plants, through: :current_linking_families
 	validates :name, presence: true, length: { maximum: 100 }
end
