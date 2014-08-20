class Photo < ActiveRecord::Base
	belongs_to :current_plant
	# This is not a many-to-many, this time.
end
