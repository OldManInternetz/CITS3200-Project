class LeafColoursController < ApplicationController

  def index
    @leaf_colours = LeafColour.all
  end
  
  def new
    @leaf_colour = LeafColour.new
  end
  
  def create
    @leaf_colour = LeafColour.new(leaf_colour_params)
 
    @leaf_colour.save
    redirect_to leaf_colours_path
  end
  
  def show
    @leaf_colour = LeafColour.find(params[:id])
  end
  
  def edit
    @leaf_colour = LeafColour.find(params[:id])
  end
  
  def update
    @leaf_colour = LeafColour.find(params[:id])
 
    if @leaf_colour.update(leaf_colour_params)
      redirect_to leaf_colours_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @leaf_colour = LeafColour.find(params[:id])
    @leaf_colour.destroy
 
    redirect_to leaf_colours_path
  end
  
  private
    def leaf_colour_params
      params.require(:leaf_colour).permit(:name)
    end

end
