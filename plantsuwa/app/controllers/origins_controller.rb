class OriginsController < ApplicationController

  before_filter :user_is_admin
  layout 'admin_layout'

  def index
    @origins = Origin.all
  end
  
  def new
    @origin = Origin.new
  end
  
  def create
    @origin = Origin.new(origin_params)
    if @origin.save
      redirect_to origins_path
    else
      render 'new'
    end
  end
  
  def show
    @origin = Origin.find(params[:id])

    @current_plants = @origin.current_plants.all

  end
  
  def edit
    @origin = Origin.find(params[:id])
  end
  
  def update
    @origin = Origin.find(params[:id])
 
    if @origin.update(origin_params)
      redirect_to origins_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @origin = Origin.find(params[:id])
    @origin.destroy
 
    redirect_to origins_path
  end
  
  private
    def origin_params
      params.require(:origin).permit(:name)
    end

end
