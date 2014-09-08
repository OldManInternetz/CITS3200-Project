class AdminPagesController < ApplicationController

	before_filter :user_is_admin
  layout 'admin_layout'

  def index

  	@notifications_count = Notification.count
  	@users_count = User.count
  	@current_plants_count = CurrentPlant.count
  	@current_photos_count = CurrentPhoto.count
  	@climates_count = Climate.count
  	@flower_colours_count = FlowerColour.count
  	@leaf_colours_count = LeafColour.count
  	@origins_count = Origin.count
  	@sizes_count = Size.count
  	@soil_types_count = SoilType.count
  	@types_count = Type.count

  end

  
  
end
