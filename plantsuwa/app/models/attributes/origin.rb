class Origin < ActiveRecord::Base
	has_many :current_linking_origins, dependent: :destroy
  has_many :current_plants, through: :current_linking_origins
 	validates :name, presence: true, length: { maximum: 100 }, uniqueness: { case_sensitive: false }
end
