class CreateCurrentFamilies < ActiveRecord::Migration
  def change
    create_table :current_families do |t|
      t.string :name

      t.timestamps
    end
  end
end
