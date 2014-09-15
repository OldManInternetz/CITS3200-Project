class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.integer :user_id
      t.integer :current_plant_id

      t.timestamps
    end
    add_index :favourites, :user_id
    add_index :favourites, :current_plant_id
    add_index :favourites, [:user_id, :current_plant_id], unique: true
  end
end
