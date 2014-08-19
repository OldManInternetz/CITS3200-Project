class CreateCurrentSoilTypes < ActiveRecord::Migration
  def change
    create_table :current_soil_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
