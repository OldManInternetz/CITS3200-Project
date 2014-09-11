class CurrentPlantsController < ApplicationController
  
  include CurrentPlantHelper

  before_action :signed_in_user, only: [:new, :edit, :update, :create]
  before_action :user_is_admin, only: [:index_admin, :destroy_admin, :edit_admin, :show_admin, :update_admin, :new_admin, :create_admin]

  layout 'admin_layout', only: [:index_admin, :show_admin, :edit_admin, :new_admin, :create_admin, :update_admin]


  def index
    @current_plants = CurrentPlant.search_for(params[:search])
  end

  def index_admin
    @current_plants = CurrentPlant.paginate(page: params[:page], per_page: 7) 
  end

  def index_param_search
    #@current_plants = CurrentPlant.where('id = ?', 4)
    if !params.has_key?(:plants)
      redirect_to search_current_plants_path
    else

    puts "#" * 3 + " Climates: " + params[:plants][:climate].to_s + " " + "#" * 3
    puts "#" * 3 + " Origins: " + params[:plants][:origin].to_s + " " + "#" * 3
    puts "#" * 3 + " Sizes: " + params[:plants][:size].to_s + " " + "#" * 3
    puts "#" * 3 + " Flower Colours: " + params[:plants][:flower_colour].to_s + " " + "#" * 3
    puts "#" * 3 + " Leaf Colours: " + params[:plants][:leaf_colour].to_s + " " + "#" * 3
    puts "#" * 3 + " Soil Types: " + params[:plants][:soil_type].to_s + " " + "#" * 3
    puts "#" * 3 + " Types: " + params[:plants][:type].to_s + " " + "#" * 3
    @plants = params[:plants].to_s

    params[:plants][:climate]

    @current_plants = CurrentPlant.where(id: (CurrentLinkingClimate.where(climate_id: (Climate.where(id: params[:plants][:climate])))).select("current_plant_id")) + CurrentPlant.where(id: (CurrentLinkingOrigin.where(origin_id: (Origin.where(id: params[:plants][:origin])))).select("current_plant_id")) + CurrentPlant.where(id: (CurrentLinkingSize.where(size_id: (Size.where(id: params[:plants][:size])))).select("current_plant_id")) + CurrentPlant.where(id: (CurrentLinkingSoilType.where(soil_type_id: (SoilType.where(id: params[:plants][:soil_type])))).select("current_plant_id"))


    @current_plants.each do |f|
      puts "*"* 10 + f.scientific_name + "*" * 5
    end

    #@current_plants = CurrentPlant.find_by(

    #where(self.climates.map(&:id): [1, 3, 5])

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
      flash[:success] = "\"#{display_title(@current_plant)}\" was successfully created."
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
      flash[:success] = "\"#{display_title(@current_plant)}\" was successfully updated."
      redirect_to admin_current_plant_path(@current_plant)
    else
      render 'edit_admin'
    end
  end


  def destroy_admin
    @current_plant = CurrentPlant.find(params[:id])
    flash[:success] = "\"#{display_title(@current_plant)}\" was successfully destroyed."
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
