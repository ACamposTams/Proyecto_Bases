class CreateCartColeccionables < ActiveRecord::Migration
  def change
    create_table :cart_coleccionables do |t|
      t.integer :coleccionable_id
      t.integer :cart_id
      t.integer :cantidad, default: 1
      t.integer :order_id

      t.timestamps
    end
  end
end
