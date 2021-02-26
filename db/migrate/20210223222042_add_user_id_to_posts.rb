class AddUserIdToPosts < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :posts, :user_id, :integer
  end
end
