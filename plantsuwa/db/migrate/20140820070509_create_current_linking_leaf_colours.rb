class CreateCurrentLinkingLeafColours < ActiveRecord::Migration
  def change
    create_table :current_linking_leaf_colours do |t|
      t.integer :current_plant_id
      t.integer :leaf_colour_id
      t.timestamps
    end
  end
end
