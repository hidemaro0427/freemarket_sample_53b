class RemoveUserIdIdToItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :user_id_id
  end
end
