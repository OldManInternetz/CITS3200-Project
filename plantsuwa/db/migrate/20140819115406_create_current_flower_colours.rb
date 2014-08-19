class CreateCurrentFlowerColours < ActiveRecord::Migration
  def change
    create_table :current_flower_colours do |t|
      t.string :name

      t.timestamps
    end
  end
end
