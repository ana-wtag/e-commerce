class RemoveUserIdColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :orderitems, :user_id
  end
end
