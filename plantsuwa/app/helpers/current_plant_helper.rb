module CurrentPlantHelper

  # These helper methods determine whether a plant has info for a particular tab, so the JQuery script knows which ones to disable.

  # All plants must have a name, so there's no method for 'descriptions'


  def has_architectural(current_plant)
    return !(not @current_plant.climates.any? and @current_plant.environment.blank? and @current_plant.horticulture.blank? and @current_plant.architectural_uses.blank? and @current_plant.architectural_info.blank? and not @current_plant.soil_types.any?)
  end

  def has_environmental(current_plant)
    return !(@current_plant.culture.blank? and @current_plant.conservation.blank? and @current_plant.wildlife.blank? and not @current_plant.origins.any? and @current_plant.location_name.blank? and @current_plant.general_info.blank? and @current_plant.additional_info.blank? and @current_plant.discovered_by.blank? and @current_plant.named_by.blank?)
  end

  def has_photos(current_plant)
    return @current_plant.current_photos.any?
  end

  """ Displays the name of the plant, for use in things other than titles """

  def display_name(plant)
    if plant
      if plant.scientific_name.blank?
        '<span class="no-description">(No Name)</span>'.html_safe
      else
        '<i>'.html_safe + plant.scientific_name.html_safe + '</i>'.html_safe
      end
    else
      '(Not a plant)'
    end
  end

  """ Displays the name of the plant, for use in a title """

  def display_title(plant)
    if plant.scientific_name.blank?
      '(Nameless Plant)'
    else
      plant.scientific_name
    end
  end


  """ Finds all relevant plants based on the parameters passed by the controller. """

  def find_relevant_plants(params)

    # Determine which parameters have actually been entered
    num_params = 4

    # A list of parameters
    params_list = [params[:climate], params[:origin], params[:size], params[:leaf_colour], params[:type]]

    # params[:soil_type] and params[:flower_colour] not in use at the moment

    # Set up results lists

    results_list = Array.new
    temporary_results_list = Array.new

    first_round = true

    for i in 0..num_params
      if params_list[i].length > 1 # Make sure we're not searching an empty query

        #puts "Climate[0]: #{params_list[i].}"

        for item_id in 0..(params_list[i].length-2)

          #puts "Doing #{item_id} of #{params_list[i].length - 2}"


          # Obtain all plants with the relevant query

          if i == 0
            temporary_results_list = (CurrentPlant.where(id: (CurrentLinkingClimate.where(climate_id: (Climate.where(id: params_list[i][item_id])))).select("current_plant_id"))).load
          elsif i == 1
            temporary_results_list = CurrentPlant.where(id: (CurrentLinkingOrigin.where(origin_id: (Origin.where(id: params_list[i][item_id])))).select("current_plant_id")).load
          elsif i == 2
            temporary_results_list = CurrentPlant.where(id: (CurrentLinkingSize.where(size_id: (Size.where(id: params_list[i][item_id])))).select("current_plant_id")).load
          #elsif i == 3
            #temporary_results_list = CurrentPlant.where(id: (CurrentLinkingSoilType.where(soil_type_id: (SoilType.where(id: params_list[i][item_id])))).select("current_plant_id")).all
          #elsif i == 4
            #temporary_results_list = CurrentPlant.where(id: (CurrentLinkingFlowerColour.where(flower_colour_id: (FlowerColour.where(id: params[i][item_id])))).select("current_plant_id")).all
          elsif i == 3
            temporary_results_list = CurrentPlant.where(id: (CurrentLinkingLeafColour.where(leaf_colour_id: (LeafColour.where(id: params_list[i][item_id])))).select("current_plant_id")).load
          elsif i == 4
            temporary_results_list = CurrentPlant.where(type_id: (Type.where(id: params_list[i][item_id]))).load
          end


          # If this is the first thing being looked at, add all relevant plants to the array
          if first_round
            for p in temporary_results_list
              results_list.push(p)
            end
            first_round = false
          # If there are plants already in the results array, we need to check whether they feature this associated item. If they don't, they need to be removed
          else
            results_list.delete_if { |obj| !temporary_results_list.include?(obj)}
          end

          # Clear the temporary result list
          temporary_results_list.clear

        end
      end
    end

    #puts "*" * 10 + "Number of results: #{results_list.length}" + "*" * 10

    return results_list


  end



end
