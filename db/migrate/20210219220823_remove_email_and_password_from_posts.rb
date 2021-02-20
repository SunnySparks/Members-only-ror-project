class RemoveEmailAndPasswordFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :email, :string
    remove_column :posts, :password, :string
  end
end
