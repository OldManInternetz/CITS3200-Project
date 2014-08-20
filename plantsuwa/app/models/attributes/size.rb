class Size < ActiveRecord::Base
	has_many :current_linking_sizes
  has_many :current_plants, through: :current_linking_sizes
 	validates :name, presence: true, length: { maximum: 100 }
end
