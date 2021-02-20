class AddContentToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :post, :string
  end
end
