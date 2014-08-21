class CreateLeafColours < ActiveRecord::Migration
  def change
    create_table :leaf_colours do |t|
      t.string :name
      t.timestamps
    end
  end
end
