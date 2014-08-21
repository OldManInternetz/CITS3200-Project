class CreateCurrentPlantsClimates < ActiveRecord::Migration
  def change
    create_table :current_plants_climates do |t|
      t.integer :current_plants_id
      t.integer :climates_id

      t.timestamps
    end
  end
end
