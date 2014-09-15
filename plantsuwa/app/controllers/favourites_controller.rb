class FavouritesController < ApplicationController
  
    #before_filter :find_user

    def index
      @favourites = Favourite.all
    end

end
