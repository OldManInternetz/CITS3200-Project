class CreateCurrentLeafColours < ActiveRecord::Migration
  def change
    create_table :current_leaf_colours do |t|
      t.string :name

      t.timestamps
    end
  end
end
