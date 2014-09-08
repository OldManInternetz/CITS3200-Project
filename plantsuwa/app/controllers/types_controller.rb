class TypesController < ApplicationController
  
  before_filter :user_is_admin
  layout 'admin_layout'


  def index
    @types = Type.paginate(page: params[:page], per_page: 15)
  end
  
  def new
    @type = Type.new
  end
  
  def create
    @type = Type.new(type_params)
    if @type.save
      flash[:success] = "\"#{@type.name}\" was successfully created." 
      redirect_to types_path
    else
      render 'new'
    end
  end
  
  def show
    @type = Type.find(params[:id])

    @current_plants = @type.current_plants.all

  end
  
  def edit
    @type = Type.find(params[:id])
  end
  
  def update
    @type = Type.find(params[:id])
 
    if @type.update(type_params)
      flash[:success] = "\"#{@type.name}\" was successfully updated."
      redirect_to types_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @type = Type.find(params[:id])
    @type.destroy
    flash[:success] = "\"#{@type.name}\" was successfully destroyed." 
    redirect_to types_path
  end
  
  private
    def type_params
      params.require(:type).permit(:name)
    end
end
