class CreateCurrentLinkingSoilTypes < ActiveRecord::Migration
  def change
    create_table :current_linking_soil_types do |t|
      t.integer :current_plant_id
      t.integer :soil_type_id
      t.timestamps
    end
  end
end
