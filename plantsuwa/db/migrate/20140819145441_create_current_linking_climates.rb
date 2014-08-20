class CreateCurrentLinkingClimates < ActiveRecord::Migration
  def change
    create_table :current_linking_climates do |t|
      t.belongs_to :current_plant
      t.belongs_to :climate
      t.timestamps
    end
  end
end
