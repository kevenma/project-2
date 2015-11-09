class AddShoppingCartIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :shopping_cart_id, :integer
  end
end
