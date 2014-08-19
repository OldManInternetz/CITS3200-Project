class CreateCurrentClimates < ActiveRecord::Migration
  def change
    create_table :current_climates do |t|
      t.string :name

      t.timestamps
    end
  end
end
