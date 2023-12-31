class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :available_quantity
      t.timestamps
    end
  end
end
