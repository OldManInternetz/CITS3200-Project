class LeafColoursController < ApplicationController

  before_filter :user_is_admin
  layout 'admin_layout'


  def index
    @leaf_colours = LeafColour.paginate(page: params[:page], per_page: 15)
  end
  
  def new
    @leaf_colour = LeafColour.new
  end
  
  def create
    @leaf_colour = LeafColour.new(leaf_colour_params)
    if @leaf_colour.save
      flash[:success] = "\"#{@leaf_colour.name}\" was successfully created." 
      redirect_to leaf_colours_path
    else
      render 'new'
    end
  end
  
  def show
    @leaf_colour = LeafColour.find(params[:id])

    @current_plants = @leaf_colour.current_plants.all
  end
  
  def edit
    @leaf_colour = LeafColour.find(params[:id])
  end
  
  def update
    @leaf_colour = LeafColour.find(params[:id])
 
    if @leaf_colour.update(leaf_colour_params)
      flash[:success] = "\"#{@leaf_colour.name}\" was successfully updated." 
      redirect_to leaf_colours_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @leaf_colour = LeafColour.find(params[:id])
    @leaf_colour.destroy
    flash[:success] = "\"#{@leaf_colour.name}\" was successfully destroyed." 
    redirect_to leaf_colours_path
  end
  
  private
    def leaf_colour_params
      params.require(:leaf_colour).permit(:name, :alt_colour)
    end

end
