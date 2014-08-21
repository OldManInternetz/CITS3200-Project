class CreateCurrentLinkingSizes < ActiveRecord::Migration
  def change
    create_table :current_linking_sizes do |t|
      t.integer :current_plant_id
      t.integer :size_id
      t.timestamps
    end
  end
end
