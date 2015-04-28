class AddOrderIdToCartProductos < ActiveRecord::Migration
  def change
    add_column :cart_productos, :order_id, :integer
  end
end
