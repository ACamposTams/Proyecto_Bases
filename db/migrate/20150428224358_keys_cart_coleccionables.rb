class KeysCartColeccionables < ActiveRecord::Migration
  def change
  	add_foreign_key(:cart_coleccionables,:coleccionables)
  	add_foreign_key(:cart_coleccionables,:carts)
  end
end
