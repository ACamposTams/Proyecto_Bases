class AddCantidadToCartProductos < ActiveRecord::Migration
  def change
    add_column :cart_productos, :cantidad, :integer, default: 1
  end
end
