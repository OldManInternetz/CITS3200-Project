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

  def display_name(plant)
    plant.name
    # CHANGE TO THIS LATER #{plant.genus} #{plant.species}"
  end




end
