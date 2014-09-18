class FavouritesController < ApplicationController
  
    before_action :signed_in_user

    def create
      @user = User.find(params[:favourite][:favourite_id])
      current_user.favourite!(@current_plant)
      respond_to do |format|
            format.html { redirect_to @current_plant }
            format.js
      end
    end

    def destroy
      @user = Favourite.find(params[:id]).favourite
      current_user.unfavourite!(@current_plant)
      respond_to do |format|
            format.html { redirect_to @current_plant }
            format.js
      end
    end
end
