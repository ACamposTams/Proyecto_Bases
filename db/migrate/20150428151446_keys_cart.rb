class KeysCart < ActiveRecord::Migration
  def change
  	add_foreign_key(:carts,:compradors)
  end
end
