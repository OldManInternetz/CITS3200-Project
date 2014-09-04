class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.integer :current_plant_id
      t.string :action
      t.string :changes_made

      t.timestamps
    end
  end
end
