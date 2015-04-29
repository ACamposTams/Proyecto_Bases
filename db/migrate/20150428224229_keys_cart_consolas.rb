class KeysCartConsolas < ActiveRecord::Migration
  def change
  	add_foreign_key(:cart_consolas,:consolas)
  	add_foreign_key(:cart_consolas,:carts)
  end
end
