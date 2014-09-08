class FlowerColoursController < ApplicationController

  before_filter :user_is_admin
  layout 'admin_layout'


  def index
    @flower_colours = FlowerColour.paginate(page: params[:page], per_page: 15)
  end
  
  def new
    @flower_colour = FlowerColour.new
  end
  
  def create
    @flower_colour = FlowerColour.new(flower_colour_params)
    if @flower_colour.save
      flash[:success] = "\"#{@flower_colour.name}\" was successfully created." 
      redirect_to flower_colours_path
    else
      render 'new'
    end
  end
  
  def show
    @flower_colour = FlowerColour.find(params[:id])

    @current_plants = @flower_colour.current_plants.all
  end
  
  def edit
    @flower_colour = FlowerColour.find(params[:id])
  end
  
  def update
    @flower_colour = FlowerColour.find(params[:id])
 
    if @flower_colour.update(flower_colour_params)
      flash[:success] = "\"#{@flower_colour.name}\" was successfully updated." 
      redirect_to flower_colours_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @flower_colour = FlowerColour.find(params[:id])
    @flower_colour.destroy
    flash[:success] = "\"#{@flower_colour.name}\" was successfully destroyed." 
    redirect_to flower_colours_path
  end
  
  private
    def flower_colour_params
      params.require(:flower_colour).permit(:name, :alt_colour)
    end

end
