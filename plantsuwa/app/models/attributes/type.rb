class Type < ActiveRecord::Base
	has_many :current_plants, dependent: :destroy
 	validates :name, presence: true, length: { maximum: 100 }
end
