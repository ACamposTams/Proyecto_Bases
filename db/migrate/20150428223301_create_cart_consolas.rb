class CreateCartConsolas < ActiveRecord::Migration
  def change
    create_table :cart_consolas do |t|
      t.integer :consola_id
      t.integer :cart_id
      t.integer :cantidad, default: 1
      t.integer :order_id

      t.timestamps
    end
  end
end
