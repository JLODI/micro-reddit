class RemoveUserIdColumnFromPosts < ActiveRecord::Migration[8.0]
  def change
    remove_column :posts, :user_id, :integer
  end
end
