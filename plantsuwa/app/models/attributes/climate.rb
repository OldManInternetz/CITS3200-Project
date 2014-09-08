class Climate < ActiveRecord::Base
  has_many :current_linking_climates, dependent: :destroy
  has_many :current_plants, through: :current_linking_climates
	validates :name, presence: true, length: { maximum: 100 }, uniqueness: { case_sensitive: false }
end
