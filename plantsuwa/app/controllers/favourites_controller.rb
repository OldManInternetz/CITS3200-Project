class FavouritesController < ApplicationController
  
    #before_action :signed_in_user

    def create
      if !current_user.nil?   # Security precautions
        @current_plant = CurrentPlant.find(params[:id])

        current_user.favourite!(@current_plant)

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
        
        respond_to do |format|
          format.html { redirect_to(:back) }
          format.js
        end
      end
    end
    
    def index
      @current_plants = CurrentPlant.all
    end
    
end
