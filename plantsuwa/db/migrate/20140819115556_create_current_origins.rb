class CreateCurrentOrigins < ActiveRecord::Migration
  def change
    create_table :current_origins do |t|
      t.string :name

      t.timestamps
    end
  end
end
