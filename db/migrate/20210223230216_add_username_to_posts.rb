class AddUsernameToPosts < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :posts, :username, :string
  end
end
