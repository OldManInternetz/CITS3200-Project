class CreateFlowerColours < ActiveRecord::Migration
  def change
    create_table :flower_colours do |t|
      t.string :name
      t.timestamps
    end
  end
end
