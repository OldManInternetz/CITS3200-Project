class FlowerColour < ActiveRecord::Base
	has_many :current_linking_flower_colours, dependent: :destroy
  has_many :current_plants, through: :current_linking_flower_colours
 	validates :name, presence: true, length: { maximum: 100 }, uniqueness: { message: "already exists as a colour in the database", case_sensitive: false }



end
