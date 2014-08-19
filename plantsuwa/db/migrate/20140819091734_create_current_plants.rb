class CreateCurrentPlants < ActiveRecord::Migration
  def change
    create_table :current_plants do |t|
      t.string :name

      t.timestamps
    end
  end
end
