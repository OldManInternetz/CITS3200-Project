class CreateJoinTableClimatesCurrentPlants < ActiveRecord::Migration
  def change
    create_join_table :climates, :current_plants do |t|
      # t.index [:climate_id, :current_plant_id]
      # t.index [:current_plant_id, :climate_id]
    end
  end
end
