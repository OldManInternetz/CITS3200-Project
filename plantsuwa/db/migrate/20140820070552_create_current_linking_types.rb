class CreateCurrentLinkingTypes < ActiveRecord::Migration
  def change
    create_table :current_linking_types do |t|
      t.integer :current_plant_id
      t.integer :type_id
      t.timestamps
    end
  end
end
