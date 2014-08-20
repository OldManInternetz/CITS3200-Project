class CurrentPlantsController < ApplicationController
  
  def index
    @current_plants = CurrentPlant.all
  end
  
  def new
    @current_plant = CurrentPlant.new
  end
  
  def create
    @current_plant = CurrentPlant.new(current_plant_params)
 
    @current_plant.save
    redirect_to @current_plant
  end
  
  def show
    @current_plant = CurrentPlant.find(params[:id])
  end
  
  def destroy
    @current_plant = CurrentPlant.find(params[:id])
    @current_plant.destroy
 
    redirect_to current_plants_path
  end
  
  private
    def current_plant_params
      params.require(:current_plant).permit(:name, :species, :common_name, :scientific_name, :synonym, :subspecies, :description, :location_name, :characteristics, :additional_info, :identification, :physical, :general_info, :environment, :horticulture, :architectural_uses, :culture, :conservation, :wildlife, :architectural_info, :discovered_by, :named_by)
    end
  
end
