class FlowerColour < ActiveRecord::Base
	has_many :current_linking_flower_colours
  has_many :current_plants, through: :current_linking_flower_colours
 	validates :name, presence: true, length: { maximum: 100 }
end
