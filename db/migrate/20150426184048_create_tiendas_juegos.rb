class CreateTiendasJuegos < ActiveRecord::Migration
  def change
    create_table :tiendas_juegos do |t|
    	t.belongs_to :juego, :null => false
    	t.belongs_to :tienda, :null => false
        t.integer :cantidad
      t.timestamps
    end
  end
end
