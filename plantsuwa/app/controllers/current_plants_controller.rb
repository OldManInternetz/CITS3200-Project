class CurrentPlantsController < ApplicationController
  
  include CurrentPlantHelper

  before_action :user_is_trusted, only: [:new, :edit, :update, :create]
  before_action :user_is_admin, only: [:index_admin, :destroy_admin, :edit_admin, :show_admin, :update_admin, :new_admin, :create_admin]


  layout 'admin_layout', only: [:index_admin, :show_admin, :edit_admin, :new_admin, :create_admin, :update_admin]
  
  rescue_from ScopedSearch::QueryNotSupported, with: :query_not_supported



  # Autocomplete functions
  autocomplete :current_plant, :family, scopes: [:unique_families]
  autocomplete :current_plant, :genus, scopes: [:unique_genera]
  autocomplete :current_plant, :species, scopes: [:unique_species]




  def change_view
    cookies[:view] = params[:view]
    redirect_to current_plants_path
  end

  def change_sort_by
    cookies[:sort_by] = params[:sort_by]
    redirect_to current_plants_path
  end

  def index
    
    @current_plants = CurrentPlant.all
    respond_to do |format|
        format.html
        format.csv { send_data @current_plants.to_csv }
        format.xls #{ send_data @current_plants.to_csv(col_sep: "\t") }
    end

    if cookies[:view] == "grid"
      @view = "grid"
    else
      @view = "list"
    end

    # The different paths the plants can be sorted through
    @sort_paths = { "Genus" => change_sort_by_path(sort_by: 'genus'), "Family" => change_sort_by_path(sort_by: 'family'), "Common Name" => change_sort_by_path(sort_by: 'common_name'), "Type" => change_sort_by_path(sort_by: 'type') }

    if cookies[:sort_by].blank?
      @sort_by_select_option = @sort_paths["Genus"]
      @sort_by = "Genus"
    else 
      @sort_by_select_option = @sort_paths[cookies[:sort_by].titleize]
      @sort_by = cookies[:sort_by].titleize
    end

    #@current_plants = yield_ordered_plants(@sort_by)

    @grouped_plants = yield_grouped_plants(@sort_by)

  end
  
  def index_admin
    @current_plants = CurrentPlant.paginate(page: params[:page], per_page: 7) 
  end

  def search

    if params.has_key?(:search)
      @searched = true

      @search_string = create_keyword_search_string(params[:search])

      @current_plants = CurrentPlant.search_for(@search_string)
      @results_count = @current_plants.count

    elsif params.has_key?(:plants)
      @searched = true
      @parameters = params[:plants]
      @current_plants = find_relevant_plants(params[:plants])
      @results_count = @current_plants.count
      @search_string = create_param_search_string(params[:plants])
    else
      @searched = false
    end
  end



  '''
	def auto_complete_search
  	begin
    	@items = CurrentPlant.complete_for(params[:search])
  	rescue ScopedSearch::QueryNotSupported => e
    	@items = [{:error =>e.to_s}]
  	end
     render :json => @items
	end
  '''
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
    #@photos = @current_plant.current_photos
    if @current_plant.display_photo.exists?      
      @photos_count = @current_plant.current_photos.count + 1
    else
       @photos_count = @current_plant.current_photos.count
    end
  end

  def show_admin
    @current_plant = CurrentPlant.find(params[:id])
    @notifications = Notification.where('current_plant_id = ?', params[:id])
    @favourites = User.where(id: (@current_plant.favourites).select('user_id'))
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
      params.require(:current_plant).permit(:name, :family, :genus, :species, :common_name, :synonym, :scientific_name, :subspecies, :description, :location_1, :location_2, :location_3, :location_4, :location_5, :location_6, :lat1, :lng1, :lat2, :lng2, :lat3, :lng3, :lat4, :lng4, :lat5, :lng5, :lat6, :lng6, :characteristics, :additional_info, :identification, :physical, :general_info, :environment, :horticulture, :architectural_uses, :culture, :conservation, :wildlife, :architectural_info, :discovered_by, :named_by, :display_photo, :display_photo_file_name, :display_photo_content_type, :display_photo_file_size, :display_photo_description, :type_id, :climate_ids => [], :size_ids => [], :soil_type_ids => [], :origin_ids => [], :leaf_colour_ids => [], :flower_colour_ids => [], current_photos_attributes: [:id, :current_plant_id, :description, :image, :image_file_name, :image_content_type, :image_file_size, :image_updated_at])
    end

    def current_plant_params_no_photo
      params.require(:current_plant).permit(:name, :family, :genus, :species, :common_name, :synonym, :scientific_name, :subspecies, :description, :location_1, :location_2, :location_3, :location_4, :location_5, :location_6, :lat1, :lng1, :lat2, :lng2, :lat3, :lng3, :lat4, :lng4, :lat5, :lng5, :lat6, :lng6, :characteristics, :additional_info, :identification, :physical, :general_info, :environment, :horticulture, :architectural_uses, :culture, :conservation, :wildlife, :architectural_info, :discovered_by, :named_by, :display_photo, :display_photo_file_name, :display_photo_content_type, :display_photo_file_size, :display_photo_description, :type_id, :climate_ids => [], :size_ids => [], :soil_type_ids => [], :origin_ids => [], :leaf_colour_ids => [], :flower_colour_ids => [])
    end



    def create_notification(action, changes)
      Notification.create(current_plant_id: @current_plant.id, user_id: current_user.id, action: action, changes_made: changes)
      # Note: this can be expanded to specify what was changed, if anything, but it's a bit difficult to do at this stage.
    end


    # Before filters
    
    def query_not_supported
      flash[:error] = "Sorry, that search query is not supported. See Help for search tips :)"
      redirect_to search_current_plants_path
    end
    




end
