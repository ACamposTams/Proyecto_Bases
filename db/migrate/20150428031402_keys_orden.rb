class KeysOrden < ActiveRecord::Migration
  def change
  	add_foreign_key(:orders,:compradors)
  end
end
