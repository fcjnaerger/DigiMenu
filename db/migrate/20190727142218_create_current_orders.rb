class CreateCurrentOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :current_orders do |t|
      t.references :item, foreign_key: true
      t.references :order, foreign_key: true
      t.integer :quantity
      t.integer :item_price

      t.timestamps
    end
  end
end
