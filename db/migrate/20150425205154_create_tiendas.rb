class CreateTiendas < ActiveRecord::Migration
  def change
    create_table :tiendas do |t|
      t.string :direccion
      t.integer :telefono

      t.timestamps
    end
  end
end
