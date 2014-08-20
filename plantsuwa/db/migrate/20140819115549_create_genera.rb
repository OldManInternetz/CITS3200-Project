class CreateGenera < ActiveRecord::Migration
  def change
    create_table :genera do |t|
      t.string :name
      t.timestamps
    end
  end
end
