class CurrentPlantsController < ApplicationController
  
  def index
    @current_plants = CurrentPlant.search_for(params[:search])
  end
  
	def auto_complete_search
  	begin
    	@items = CurrentPlant.complete_for(params[:search])
  	rescue ScopedSearch::QueryNotSupported => e
    	@items = [{:error =>e.to_s}]
  	end
	end
  
  def new
    @current_plant = CurrentPlant.new
    @current_plant.photos.build
  end
  
  def create
    @current_plant = CurrentPlant.new(current_plant_params)
 
    if @current_plant.save
      redirect_to @current_plant
    else
      render 'new'
    end
  end
  
  def show
    @current_plant = CurrentPlant.find(params[:id])

    @previous_plant = CurrentPlant.where("id < ?", params[:id]).last
    @next_plant = CurrentPlant.where("id > ?", params[:id]).first

  end
  
  def edit
    @current_plant = CurrentPlant.find(params[:id])
  end
  
  def update
    @current_plant = CurrentPlant.find(params[:id])
 
    if @current_plant.update(current_plant_params)
      redirect_to @current_plant
    else
      render 'edit'
    end
  end
  
  def destroy
    @current_plant = CurrentPlant.find(params[:id])
    @current_plant.destroy
 
    redirect_to current_plants_path
  end
  
  private
    def current_plant_params
      params.require(:current_plant).permit(:name, :species, :common_name, :scientific_name, :synonym, :subspecies, :description, :location_name, :characteristics, :additional_info, :identification, :physical, :general_info, :environment, :horticulture, :architectural_uses, :culture, :conservation, :wildlife, :architectural_info, :discovered_by, :named_by, :climate_ids => [], :size_ids => [], :size_ids => [], :type_ids => [], :soil_type_ids => [], :origin_ids => [], :leaf_colour_ids => [], :genus_ids => [], :flower_colour_ids => [], :family_ids => [])
    end
  
end
