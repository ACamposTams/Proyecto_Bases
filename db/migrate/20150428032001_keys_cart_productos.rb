class KeysCartProductos < ActiveRecord::Migration
  def change
  	add_foreign_key(:cart_productos,:juegos)
  	add_foreign_key(:cart_productos,:carts)
  end
end
