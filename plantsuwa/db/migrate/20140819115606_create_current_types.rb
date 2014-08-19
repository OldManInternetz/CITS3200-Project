class CreateCurrentTypes < ActiveRecord::Migration
  def change
    create_table :current_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
