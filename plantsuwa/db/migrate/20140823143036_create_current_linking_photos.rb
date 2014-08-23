class CreateCurrentLinkingPhotos < ActiveRecord::Migration
  def change
    create_table :current_linking_photos do |t|
      t.integer :current_plant_id
      t.integer :photo_id
      t.timestamps
    end
  end
end
