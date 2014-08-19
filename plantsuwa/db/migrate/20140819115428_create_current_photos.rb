class CreateCurrentPhotos < ActiveRecord::Migration
  def change
    create_table :current_photos do |t|
      t.string :description

      t.timestamps
    end
  end
end
