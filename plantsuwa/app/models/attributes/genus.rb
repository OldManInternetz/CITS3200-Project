class Genus < ActiveRecord::Base
	has_many :current_linking_genera
 	has_many :current_plants, through: :current_linking_genera
 	validates :name, presence: true, length: { maximum: 100 }
end
