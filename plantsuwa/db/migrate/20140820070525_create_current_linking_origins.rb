class CreateCurrentLinkingOrigins < ActiveRecord::Migration
  def change
    create_table :current_linking_origins do |t|
      t.integer :current_plant_id
      t.integer :origin_id
      t.timestamps
    end
  end
end
