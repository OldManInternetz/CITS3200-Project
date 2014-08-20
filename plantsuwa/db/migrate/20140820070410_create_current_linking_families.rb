class CreateCurrentLinkingFamilies < ActiveRecord::Migration
  def change
    create_table :current_linking_families do |t|
      t.integer :current_plant_id
      t.integer :family_id
      t.timestamps
    end
  end
end
