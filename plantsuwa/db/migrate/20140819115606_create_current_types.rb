class CreateCurrentTypes < ActiveRecord::Migration
  def change
    create_table :current_types do |t|
      t.string :name
      t.integer :current_plant_id
      t.timestamps
    end
  end
end
