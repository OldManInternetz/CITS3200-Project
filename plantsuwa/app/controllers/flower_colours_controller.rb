class FlowerColoursController < ApplicationController

  def index
    @flower_colours = FlowerColour.all
  end
  
  def new
    @flower_colour = FlowerColour.new
  end
  
  def create
    @flower_colour = FlowerColour.new(flower_colour_params)
 
    @flower_colour.save
    redirect_to flower_colours_path
  end
  
  def show
    @flower_colour = FlowerColour.find(params[:id])
  end
  
  def edit
    @flower_colour = FlowerColour.find(params[:id])
  end
  
  def update
    @flower_colour = FlowerColour.find(params[:id])
 
    if @flower_colour.update(flower_colour_params)
      redirect_to flower_colours_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @flower_colour = FlowerColour.find(params[:id])
    @flower_colour.destroy
 
    redirect_to flower_colours_path
  end
  
  private
    def flower_colour_params
      params.require(:flower_colour).permit(:name)
    end

end
