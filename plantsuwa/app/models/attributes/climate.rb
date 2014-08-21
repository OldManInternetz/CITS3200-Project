class Climate < ActiveRecord::Base
  has_many :current_linking_climates
  has_many :current_plants, through: :current_linking_climates

 	validates :name, presence: true, length: { maximum: 100 }
end
