class CreateCurrentGenus < ActiveRecord::Migration
  def change
    create_table :current_genus do |t|
      t.string :name

      t.timestamps
    end
  end
end
