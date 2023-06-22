class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.decimal :total_price
      t.integer :order_status
      t.timestamps
    end
  end
end
