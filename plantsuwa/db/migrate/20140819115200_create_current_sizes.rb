class CreateCurrentSizes < ActiveRecord::Migration
  def change
    create_table :current_sizes do |t|
      t.string :name

      t.timestamps
    end
  end
end
