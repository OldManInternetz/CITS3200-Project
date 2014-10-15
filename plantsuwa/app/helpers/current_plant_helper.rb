module CurrentPlantHelper

  # These helper methods determine whether a plant has info for a particular tab, so the JQuery script knows which ones to disable.

  # All plants must have a name, so there's no method for 'descriptions'


  def has_architectural(current_plant)
    return !(not @current_plant.climates.any? and @current_plant.environment.blank? and @current_plant.horticulture.blank? and @current_plant.architectural_uses.blank? and @current_plant.architectural_info.blank? and not @current_plant.soil_types.any?)
  end

  def has_environmental(current_plant)
    return !(@current_plant.culture.blank? and @current_plant.conservation.blank? and @current_plant.wildlife.blank? and not @current_plant.origins.any? and @current_plant.location_1.blank? and @current_plant.general_info.blank? and @current_plant.additional_info.blank? and @current_plant.discovered_by.blank? and @current_plant.named_by.blank?)
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
    params_list = [params[:origin], params[:size], params[:flower_colour], params[:leaf_colour], params[:soil_type], params[:type]]

    # params[:soil_type] and params[:flower_colour] not in use at the moment

    # Set up results lists

    results_list = Array.new
    temporary_results_list = Array.new

    first_round = true

    for i in 0..num_params
      if params_list[i].length > 1 # Make sure we're not searching an empty query

        for item_id in 0..(params_list[i].length-2)

          # Obtain all plants with the relevant query

          if i == 0
            temporary_results_list = CurrentPlant.where(id: (CurrentLinkingOrigin.where(origin_id: (Origin.where(id: params_list[i][item_id])))).select("current_plant_id")).load
          elsif i == 1
            temporary_results_list = CurrentPlant.where(id: (CurrentLinkingSize.where(size_id: (Size.where(id: params_list[i][item_id])))).select("current_plant_id")).load
          elsif i == 2
            temporary_results_list = CurrentPlant.where(id: (CurrentLinkingFlowerColour.where(flower_colour_id: (FlowerColour.where(id: params[i][item_id])))).select("current_plant_id")).all
          elsif i == 3
            temporary_results_list = CurrentPlant.where(id: (CurrentLinkingLeafColour.where(leaf_colour_id: (LeafColour.where(id: params_list[i][item_id])))).select("current_plant_id")).load
          elsif i == 4
            temporary_results_list = CurrentPlant.where(id: (CurrentLinkingSoilType.where(soil_type_id: (SoilType.where(id: params_list[i][item_id])))).select("current_plant_id")).all
          elsif i == 5
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


  """ Creates the keyword search string based on parameters """

  def create_keyword_search_string(params)

    search_string = ""

    pf = params[:family]
    pg = params[:genus]
    ps = params[:species]
    pa = params[:all]

    if not pf.empty?
      search_string += "family ~ " + pf + ", "
    end
    if not pg.empty?
      search_string += "genus ~ " + pg + ", "
    end
    if not ps.empty?
      search_string += "species ~ " + ps + ", "
    end
    search_string += pa

    search_string = fix_up_string(search_string)

    return search_string

  end


  """ Creates the parameter search string based on parameters """

  def create_param_search_string(params)

    search_string = ""

    # A list of parameter names
    param_names = ["Origin", "Size", "Flower Colour", "Leaf Colour", "Soil Type", "Type"]

    # A list of parameters
    params_list = [params[:origin], params[:size], params[:flower_colour], params[:leaf_colour], params[:soil_type], params[:type]]

    # A list of the objects in the params
    param_objects = [Origin, Size, FlowerColour, LeafColour, SoilType, Type]

    for i in 0..params_list.length
      if not params_list[i].blank?
        if params_list[i].length > 1
          search_string += param_names[i] + ": "     
          for j in 0..params_list[i].length
            if not params_list[i][j].blank?
              search_string += param_objects[i].find_by_id(params_list[i][j]).name + ", "
            end
          end
        end
      end
    end
    search_string = fix_up_string(search_string)
    return search_string
  end


  """ Fixes up the search string by removing a trailing ', '' """

  def fix_up_string(search_string)
    if search_string[-1] == " " and search_string[-2] == ","
      search_string = search_string[0..-3]
    else
      search_string
    end
  end

  """ Yields an ordered list of plants, based on the sort parameters. """
  """ It's used when the sort_by parameter is not one of the recognised ones, for whatever reason. """

  def yield_ordered_plants(sort_by)

    if sort_by == "Genus"
      plants = CurrentPlant.order('genus asc, scientific_name asc')
    elsif sort_by == "Species"
      plants = CurrentPlant.order('species asc, scientific_name asc')
    elsif sort_by == "Family"
      plants = CurrentPlant.order('family asc, scientific_name asc')
    elsif sort_by == "Common Name"
      plants = CurrentPlant.order('common_name asc, scientific_name asc')
    elsif sort_by == "Type"
      plants = CurrentPlant.joins(:type).order('types.name asc, scientific_name asc')
    else
      plants = CurrentPlant.order('genus asc')
    end

    return plants
  end

  """ Yields an ordered list of plants, based on the sort parameters, and the first letter 'letter'.
      Plants that start with a non-alphabetic character (including a space) are placed under the '#' header.
      Plants that start with alphabetic characters are placed under the A-Z headers.
      Plants that do not have a Genus, Family, or whatever field is being looked at, are placed under the '(none)' header.
  """
  def yield_ordered_plants_letter(sort_by, letter)

    # This letter deals with all plants that have names starting with anything that isn't an alphabetical character
    if(letter == "#")     

      alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
      
      if sort_by == "Genus"
        plants = CurrentPlant.where("substr(genus, 1, 1) NOT IN (?)", alphabet).where.not(genus: [nil, ""]).order('genus asc, scientific_name asc')
      elsif sort_by == "Species"
        plants = CurrentPlant.where("substr(species, 1, 1) NOT IN (?)", alphabet).where.not(species: [nil, ""]).order('species asc, scientific_name asc')
      elsif sort_by == "Family"
        plants = CurrentPlant.where("substr(family, 1, 1) NOT IN (?)", alphabet).where.not(family: [nil, ""]).order('family asc, scientific_name asc')
      elsif sort_by == "Common Name"
        plants = CurrentPlant.where("substr(common_name, 1, 1) NOT IN (?)", alphabet).where.not(common_name: [nil, ""]).order('common_name asc, scientific_name asc')
      end

    # This letter deals with all plants that have no [name], nil or empty
    elsif(letter == "(none)")

      if sort_by == "Genus"
        plants = CurrentPlant.where(genus: [nil, ""]).order('genus asc, scientific_name asc')
      elsif sort_by == "Species"
        plants = CurrentPlant.where(species: [nil, ""]).order('species asc, scientific_name asc')
      elsif sort_by == "Family"
        plants = CurrentPlant.where(family: [nil, ""]).order('family asc, scientific_name asc')
      elsif sort_by == "Common Name"
        plants = CurrentPlant.where(common_name: [nil, ""]).order('common_name asc, scientific_name asc')
      end

    # This letter accounts for every alphabetically-starting plant
    else      
      letter_both_cases = [letter, letter.downcase]

      if sort_by == "Genus"
        plants = CurrentPlant.where("substr(genus, 1, 1) IN (?)", letter_both_cases).order('genus asc, scientific_name asc')
      elsif sort_by == "Species"
        plants = CurrentPlant.where("substr(species, 1, 1) IN (?)", letter_both_cases).order('species asc, scientific_name asc')
      elsif sort_by == "Family"
        plants = CurrentPlant.where("substr(family, 1, 1) IN (?)", letter_both_cases).order('family asc, scientific_name asc')
      elsif sort_by == "Common Name"
        plants = CurrentPlant.where("substr(common_name, 1, 1) IN (?)", letter_both_cases).order('common_name asc, scientific_name asc')
      end

    end

    return plants
  end



  """ Yields a hash of header names, along with all plants belonging to those headers... e.g.
        grouped_plants['a'] = Acacia, Another, Australian
        grouped_plants['#'] = 'Hello', #hashtag, 0plant
        grouped_plants['none'] = <plants with no genus/species/whatever>
  """

  def yield_grouped_plants(sort_by)
    if sort_by == "Genus" or sort_by == "Species" or sort_by == "Family" or sort_by == "Common Name"
      list_of_headings = ["#", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "(none)"]
      hash_of_headings = Hash.new
      for i in list_of_headings
        relevant_plants = yield_ordered_plants_letter(sort_by, i)
        hash_of_headings[i] = relevant_plants
      end
      grouped_plants = hash_of_headings
    elsif sort_by == "Type"
      temp = Hash.new
      temp["All"] = yield_ordered_plants(sort_by)  
      grouped_plants = temp    
    else
      temp = Hash.new
      temp["All"] = yield_ordered_plants(sort_by)  
      grouped_plants = temp      
    end

    return grouped_plants

  end




end
