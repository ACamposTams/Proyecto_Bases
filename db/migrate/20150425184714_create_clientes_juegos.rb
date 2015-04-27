class CreateClientesJuegos < ActiveRecord::Migration
  def change
    create_table :clientes_juegos do |t|
      t.belongs_to :juego, :null => false
      t.belongs_to :cliente, :null => false
      t.integer :total, :null => false

      t.timestamps
    end
  end
end
