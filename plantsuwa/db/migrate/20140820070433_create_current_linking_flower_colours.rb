class CreateCurrentLinkingFlowerColours < ActiveRecord::Migration
  def change
    create_table :current_linking_flower_colours do |t|
      t.integer :current_plant_id
      t.integer :flower_colour_id

      t.timestamps
    end
  end
end
