class CreateOrderitems < ActiveRecord::Migration[6.1]
  def change
    create_table :orderitems do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :quantity
      t.timestamps
    end
  end
end
