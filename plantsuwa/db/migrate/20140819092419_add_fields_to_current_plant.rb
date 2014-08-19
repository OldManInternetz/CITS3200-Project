class AddFieldsToCurrentPlant < ActiveRecord::Migration
  # family (id)
  # genus (id)
	add_column :current_plants, :species,           :string
  add_column :current_plants, :common_name,       :string
  add_column :current_plants, :scientific_name,   :string
  add_column :current_plants, :synonym,           :string
  add_column :current_plants, :subspecies,        :string
  add_column :current_plants, :description,       :string
  # origin (id)
  # location_coordinates (int)
  add_column :current_plants, :location_name,     :string
  # type (id)
  add_column :current_plants, :characteristics,   :string
  add_column :current_plants, :additional_info,   :string
  # climate (id)
  add_column :current_plants, :identification,    :string
  add_column :current_plants, :physical,          :string
  # size (id)
  add_column :current_plants, :general_info,      :string
  add_column :current_plants, :environment,       :string
  # soil_type (id)
  add_column :current_plants, :horticulture,      :string
  add_column :current_plants, :architectural_uses,:string
  # leaf_colour (id)
  # flower_colour (id)
  add_column :current_plants, :culture,           :string
  add_column :current_plants, :conservation,      :string
  add_column :current_plants, :wildlife,          :string
  add_column :current_plants, :architectural_info,:string
  # photos (id)
  # submitted_by (id)
  add_column :current_plants, :discovered_by,     :string
  add_column :current_plants, :named_by,          :string
  add_column :current_plants, :approved,          :boolean
  add_column :current_plants, :version,           :integer
  # edited_by (id)
  # my_notes (id)
  # timestamps are default, I think
end
