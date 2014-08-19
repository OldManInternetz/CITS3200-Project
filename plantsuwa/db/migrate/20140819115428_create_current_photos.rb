class CreateCurrentPhotos < ActiveRecord::Migration
  def change
    create_table :current_photos do |t|
      t.string :description
      t.integer :current_plant_id
      t.timestamps
    end
  end
end
