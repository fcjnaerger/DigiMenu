class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :adress
      t.string :image

      t.timestamps
    end
  end
end
