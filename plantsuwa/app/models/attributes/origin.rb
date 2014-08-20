class Origin < ActiveRecord::Base
	has_many :current_linking_origins
  has_many :current_plants, through: :current_linking_origins
 	validates :name, presence: true, length: { maximum: 100 }
end
