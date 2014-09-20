class FavouritesController < ApplicationController
  
    before_action :user_is_signed_in

    def create
      if !current_user.nil?   # Security precautions
        @current_plant = CurrentPlant.find(params[:id])

        current_user.favourite!(@current_plant)

        flash[:success] = "You have added <i>#{@current_plant.scientific_name}</i> to your favourites.".html_safe


        respond_to do |format|
          format.html { redirect_to(:back) }
          format.js
        end
      end
    end

    def destroy
      if !current_user.nil?   # Security precautions
        @current_plant = CurrentPlant.find(params[:id])

        current_user.unfavourite!(@current_plant)
        flash[:success] = "You have removed <i>#{@current_plant.scientific_name}</i> from your favourites.".html_safe
 

        respond_to do |format|
          format.html { redirect_to(:back) }
          format.js
        end
      end
    end
    
    def index
      @user = current_user
      @favourites = @user.favourites 
      @favourites_count = @user.favourites.count     
    end
    
end
