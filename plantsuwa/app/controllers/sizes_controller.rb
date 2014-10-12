class SizesController < ApplicationController
  
  before_filter :user_is_admin
  layout 'admin_layout'


  def index
    @sizes = Size.paginate(page: params[:page], per_page: 10)
  end
  
  def new
    @size = Size.new
  end
  
  def create
    @size = Size.new(size_params)
    if @size.save
      flash[:success] = "\"#{@size.name}\" was successfully created." 
      redirect_to sizes_path
    else
      render 'new'
    end
  end
  
  def show
    @size = Size.find(params[:id])

    @current_plants = @size.current_plants.load

  end
  
  def edit
    @size = Size.find(params[:id])
  end
  
  def update
    @size = Size.find(params[:id])
 
    if @size.update(size_params)
      flash[:success] = "\"#{@size.name}\" was successfully updated."
      redirect_to sizes_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @size = Size.find(params[:id])
    @size.destroy
    flash[:success] = "\"#{@size.name}\" was successfully destroyed." 
    redirect_to sizes_path
  end
  
  private
    def size_params
      params.require(:size).permit(:name)
    end
end
