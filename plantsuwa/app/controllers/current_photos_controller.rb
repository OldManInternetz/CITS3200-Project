class CurrentPhotosController < ApplicationController

  before_filter :user_is_admin
  layout 'admin_layout'

  def index
    @current_photos = CurrentPhoto.paginate(page: params[:page], per_page: 8)
  end

  def show
    @current_photo = CurrentPhoto.find(params[:id])
    @current_plant = @current_photo.current_plant
  end

  def edit
    @current_photo = CurrentPhoto.find(params[:id])
  end

  def create
    @current_photo = CurrentPhoto.new(current_photo_params)
    if @current_photo.save
      flash[:success] = "Photo \##{@current_photo.id} was successfully created." 
      redirect_to current_photos_path
    else
      render 'new'
    end
  end

  def update
    @current_photo = CurrentPhoto.find(params[:id])
    if @current_photo.update(current_photo_params)
      flash[:success] = "Photo \##{@current_photo.id} was successfully updated." 
      redirect_to current_photos_path
    else
      render 'edit'
    end
  end

  def destroy
    @current_photo = CurrentPhoto.find(params[:id])
    @current_photo.destroy
    flash[:success] = "Photo \##{@current_photo.id} was successfully destroyed." 
    redirect_to current_photos_path
  end

  def new
    @current_photo = CurrentPhoto.new
  end

  private
    def current_photo_params
      params.require(:current_photo).permit(:current_plant_id, :description, :image)
    end
end
