class GeneraController < ApplicationController

  def index
    @genera = Genus.all
  end
  
  def new
    @genus = Genus.new
  end
  
  def create
    @genus = Genus.new(genus_params)
 
    @genus.save
    redirect_to genera_path
  end
  
  def show
    @genus = Genus.find(params[:id])
  end
  
  def edit
    @genus = Genus.find(params[:id])
  end
  
  def update
    @genus = Genus.find(params[:id])
 
    if @genus.update(genus_params)
      redirect_to genera_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @genus = Genus.find(params[:id])
    @genus.destroy
 
    redirect_to genera_path
  end
  
  private
    def genus_params
      params.require(:genus).permit(:name)
    end

end
