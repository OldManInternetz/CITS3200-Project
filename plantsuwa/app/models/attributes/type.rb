class Type < ActiveRecord::Base
	has_many :current_plants
 	validates :name, presence: true, length: { maximum: 100 }
end
