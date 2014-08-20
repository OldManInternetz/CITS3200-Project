class SoilTypesController < ApplicationController

  def index
    @soil_types = SoilType.all
  end
  
  def new
    @soil_type = SoilType.new
  end
  
  def create
    @soil_type = SoilType.new(soil_type_params)
 
    @soil_type.save
    redirect_to soil_types_path
  end
  
  def show
    @soil_type = SoilType.find(params[:id])
  end
  
  def edit
    @soil_type = SoilType.find(params[:id])
  end
  
  def update
    @soil_type = SoilType.find(params[:id])
 
    if @soil_type.update(soil_type_params)
      redirect_to soil_types_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @soil_type = SoilType.find(params[:id])
    @soil_type.destroy
 
    redirect_to soil_types_path
  end
  
  private
    def soil_type_params
      params.require(:soil_type).permit(:name)
    end

end
