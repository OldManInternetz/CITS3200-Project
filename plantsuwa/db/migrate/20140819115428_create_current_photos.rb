class CreateCurrentPhotos < ActiveRecord::Migration
  def change
    create_table :current_photos do |t|
      t.integer :current_plant_id
      t.string :description
      t.timestamps
    end
  end
end
