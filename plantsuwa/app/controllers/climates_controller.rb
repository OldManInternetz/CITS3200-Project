class ClimatesController < ApplicationController
  
  before_filter :user_is_admin
  layout 'admin_layout'


  def index
    @climates = Climate.all
  end
  
  def new
    @climate = Climate.new
  end
  
  def create
    @climate = Climate.new(climate_params)
    if @climate.save
      redirect_to climates_path
    else
      render 'new'
    end
  end
  
  def show
    @climate = Climate.find(params[:id])

    @current_plants = @climate.current_plants.all

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
