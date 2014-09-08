class SoilTypesController < ApplicationController
  
  before_filter :user_is_admin
  layout 'admin_layout'


  def index
    @soil_types = SoilType.paginate(page: params[:page], per_page: 15)
  end
  
  def new
    @soil_type = SoilType.new
  end
  
  def create
    @soil_type = SoilType.new(soil_type_params)
    if @soil_type.save
      flash[:success] = "\"#{@soil_type.name}\" was successfully created." 
      redirect_to soil_types_path
    else
      render 'new'
    end
  end
  
  def show
    @soil_type = SoilType.find(params[:id])

    @current_plants = @soil_type.current_plants.all

  end
  
  def edit
    @soil_type = SoilType.find(params[:id])
  end
  
  def update
    @soil_type = SoilType.find(params[:id])
 
    if @soil_type.update(soil_type_params)
      flash[:success] = "\"#{@soil_type.name}\" was successfully updated." 
      redirect_to soil_types_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @soil_type = SoilType.find(params[:id])
    @soil_type.destroy
    flash[:success] = "\"#{@soil_type.name}\" was successfully destroyed." 
    redirect_to soil_types_path
  end
  
  private
    def soil_type_params
      params.require(:soil_type).permit(:name)
    end
end
