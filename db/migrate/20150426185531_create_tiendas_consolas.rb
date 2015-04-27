class CreateTiendasConsolas < ActiveRecord::Migration
  def change
    create_table :tiendas_consolas do |t|
      t.belongs_to :consola, :null => false
      t.belongs_to :tienda, :null => false
      t.integer :cantidad
      t.timestamps
    end
  end
end
