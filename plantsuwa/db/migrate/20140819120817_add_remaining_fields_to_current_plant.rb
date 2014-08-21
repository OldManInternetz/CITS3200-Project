class AddRemainingFieldsToCurrentPlant < ActiveRecord::Migration
  def change
	  add_column :current_plants, :plant_id,          :integer
	  add_column :current_plants, :submitted_by,      :integer
    add_column :current_plants, :edited_by,         :integer
  end
end
