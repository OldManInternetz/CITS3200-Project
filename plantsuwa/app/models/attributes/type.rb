class Type < ActiveRecord::Base
	has_many :current_linking_types, dependent: :destroy
	has_many :current_plants, through: :current_linking_types
 	validates :name, presence: true, length: { maximum: 100 }
end
