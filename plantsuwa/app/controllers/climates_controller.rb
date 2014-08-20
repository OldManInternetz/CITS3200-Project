class ClimatesController < ApplicationController
  
  def index
    @climates = Climate.all
  end
  
  def new
    @climate = Climate.new
  end
  
  def create
    @climate = Climate.new(climate_params)
 
    @climate.save
    redirect_to climates_path
  end
  
  def show
    @climate = Climate.find(params[:id])
  end
  
  def edit
    @climate = Climate.find(params[:id])
  end
  
  def update
    @climate = Climate.find(params[:id])
 
    if @climate.update(climate_params)
      redirect_to climates_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @climate = Climate.find(params[:id])
    @climate.destroy
 
    redirect_to climates_path
  end
  
  private
    def climate_params
      params.require(:climate).permit(:name)
    end
end
