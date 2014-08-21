class CreateCurrentLinkingClimates < ActiveRecord::Migration
  def change
    create_table :current_linking_climates do |t|
      t.integer :current_plant_id
      t.integer :climate_id
      t.timestamps
    end
  end
end
