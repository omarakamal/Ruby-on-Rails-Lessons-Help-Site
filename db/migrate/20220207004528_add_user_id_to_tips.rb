class AddUserIdToTips < ActiveRecord::Migration[7.0]
  def change
    add_column :tips, :user_id, :integer
    add_index :tips, :user_id
  end
end
