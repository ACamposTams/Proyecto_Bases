class CreateCartProductos < ActiveRecord::Migration
  def change
    create_table :cart_productos do |t|
      t.integer :juego_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
