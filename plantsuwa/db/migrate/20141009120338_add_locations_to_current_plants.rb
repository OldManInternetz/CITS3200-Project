class AddLocationsToCurrentPlants < ActiveRecord::Migration
  def change
    add_column :current_plants, :lat1, :float
    add_column :current_plants, :lng1, :float
    add_column :current_plants, :lat2, :float
    add_column :current_plants, :lng2, :float
    add_column :current_plants, :lat3, :float
    add_column :current_plants, :lng3, :float
    add_column :current_plants, :lat4, :float
    add_column :current_plants, :lng4, :float
    add_column :current_plants, :lat5, :float
    add_column :current_plants, :lng5, :float
    add_column :current_plants, :lat6, :float
    add_column :current_plants, :lng6, :float
    
    rename_column :current_plants, :location_name, :location_1
    add_column :current_plants, :location_2, :string
    add_column :current_plants, :location_3, :string
    add_column :current_plants, :location_4, :string
    add_column :current_plants, :location_5, :string
    add_column :current_plants, :location_6, :string
  end
end
