class Type < ActiveRecord::Base
	has_many :current_linking_types
  has_many :current_plants, through: :current_linking_types
 	validates :name, presence: true, length: { maximum: 100 }
end
