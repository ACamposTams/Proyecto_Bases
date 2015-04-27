class CreateTiendasColeccionables < ActiveRecord::Migration
  def change
    create_table :tiendas_coleccionables do |t|
      t.belongs_to :coleccionable, :null => false
      t.belongs_to :tienda, :null => false
      t.integer :cantidad
      t.timestamps
    end
  end
end
