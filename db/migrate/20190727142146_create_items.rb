class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :card_info
      t.string :description
      t.integer :price
      t.string :food_category
      t.string :image
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
