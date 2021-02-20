class RemoveEmailFromPost < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :email, :string
  end
end
