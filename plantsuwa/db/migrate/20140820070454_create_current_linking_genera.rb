class CreateCurrentLinkingGenera < ActiveRecord::Migration
  def change
    create_table :current_linking_genera do |t|
      t.integer :current_plant_id
      t.integer :genus_id
      t.timestamps
    end
  end
end
