class CurrentPlantsController < ApplicationController
  
  include CurrentPlantHelper

  before_action :signed_in_user, only: [:new, :edit, :update, :create]
  before_action :user_is_admin, only: [:index_admin, :destroy_admin, :edit_admin, :show_admin, :update_admin, :new_admin, :create_admin]

  layout 'admin_layout', only: [:index_admin, :show_admin, :edit_admin, :new_admin, :create_admin, :update_admin]


  def index
    @current_plants = CurrentPlant.paginate(page: params[:page], per_page: 15)
  end

  def index_admin
    @current_plants = CurrentPlant.paginate(page: params[:page], per_page: 7) 
  end

  def search

    if params.has_key?(:search)
      @searched = true
      @current_plants = CurrentPlant.search_for(params[:search])
      @results_count = @current_plants.count
    elsif params.has_key?(:plants)
      @searched = true
      @parameters = params[:plants]
      @current_plants = find_relevant_plants(params[:plants])
      @results_count = @current_plants.count
    else
      @searched = false
    end
  end



  
	def auto_complete_search
  	begin
    	@items = CurrentPlant.complete_for(params[:search])
  	rescue ScopedSearch::QueryNotSupported => e
    	@items = [{:error =>e.to_s}]
  	end
	end
  
  def new
    @current_plant = CurrentPlant.new
    #5.times { @current_plant.current_photos.build }
  end

  def new_admin
    @current_plant = CurrentPlant.new
    #5.times { @current_plant.current_photos.build }
  end
  
  def create
    @current_plant = CurrentPlant.new(current_plant_params) 
    @current_plant.attributes = current_plant_params_no_photo
    changes = @current_plant.changes.to_s

    if @current_plant.save  
      create_notification('created', changes)
      redirect_to @current_plant
    else
      render 'new'
    end
  end

  def create_admin
    @current_plant = CurrentPlant.new(current_plant_params) 
    @current_plant.attributes = current_plant_params_no_photo
    changes = @current_plant.changes.to_s

    if @current_plant.save
      create_notification('created', changes)
      flash[:success] = "\"#{display_name(@current_plant)}\" was successfully created."
      redirect_to admin_current_plant_path(@current_plant)
    else
      render 'new_admin'
    end
  end
  
  def show
    @current_plant = CurrentPlant.find(params[:id])
  end

  def show_admin
    @current_plant = CurrentPlant.find(params[:id])
    @notifications = Notification.where('current_plant_id = ?', params[:id])
  end  
  
  def edit
    @current_plant = CurrentPlant.find(params[:id])
    5.times { @current_plant.current_photos.build }
  end

  def edit_admin
    @current_plant = CurrentPlant.find(params[:id])
    5.times { @current_plant.current_photos.build }
  end
  

  def update
    @current_plant = CurrentPlant.find(params[:id])
    @current_plant.attributes = current_plant_params_no_photo
    changes = @current_plant.changes.to_s


    if @current_plant.update(current_plant_params)
      create_notification('edited', changes)
      redirect_to @current_plant
    else
      render 'edit'
    end
  end

  def update_admin
    @current_plant = CurrentPlant.find(params[:id])
    @current_plant.attributes = current_plant_params_no_photo
    changes = @current_plant.changes.to_s

    if @current_plant.update(current_plant_params)
      create_notification('edited', changes)
      flash[:success] = "\"#{display_name(@current_plant)}\" was successfully updated."
      redirect_to admin_current_plant_path(@current_plant)
    else
      render 'edit_admin'
    end
  end


  def destroy_admin
    @current_plant = CurrentPlant.find(params[:id])
    flash[:success] = "\"#{display_name(@current_plant)}\" was successfully destroyed."
    @current_plant.destroy 
    redirect_to admin_current_plants_path
  end

  
  private
    
    def current_plant_params
      params.require(:current_plant).permit(:name, :family, :genus, :species, :common_name, :scientific_name, :synonym, :subspecies, :description, :location_name, :characteristics, :additional_info, :identification, :physical, :general_info, :environment, :horticulture, :architectural_uses, :culture, :conservation, :wildlife, :architectural_info, :discovered_by, :named_by, :display_photo, :display_photo_file_name, :display_photo_content_type, :display_photo_file_size, :display_photo_description, :type_id, :climate_ids => [], :size_ids => [], :soil_type_ids => [], :origin_ids => [], :leaf_colour_ids => [], :flower_colour_ids => [], current_photos_attributes: [:id, :current_plant_id, :description, :image, :image_file_name, :image_content_type, :image_file_size, :image_updated_at])
    end

    def current_plant_params_no_photo
      params.require(:current_plant).permit(:name, :family, :genus, :species, :common_name, :scientific_name, :synonym, :subspecies, :description, :location_name, :characteristics, :additional_info, :identification, :physical, :general_info, :environment, :horticulture, :architectural_uses, :culture, :conservation, :wildlife, :architectural_info, :discovered_by, :named_by, :display_photo, :display_photo_file_name, :display_photo_content_type, :display_photo_file_size, :display_photo_description, :type_id, :climate_ids => [], :size_ids => [], :soil_type_ids => [], :origin_ids => [], :leaf_colour_ids => [], :flower_colour_ids => [])
    end



    def create_notification(action, changes)
      Notification.create(current_plant_id: @current_plant.id, user_id: current_user.id, action: action, changes_made: changes)
      # Note: this can be expanded to specify what was changed, if anything, but it's a bit difficult to do at this stage.
    end


    # Before filters

    def signed_in_user
			if !signed_in?
				flash[:error] = "Please log in to access this page."
				redirect_to log_in_path
			end
    end





end
