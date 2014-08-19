class CreateCurrentGenus < ActiveRecord::Migration
  def change
    create_table :current_genus do |t|
      t.string :name
      t.integer :current_plant_id
      t.timestamps
    end
  end
end
