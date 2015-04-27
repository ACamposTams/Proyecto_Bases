class KeysClientesJuegos < ActiveRecord::Migration
  def change
  	add_foreign_key(:clientes_juegos,:juegos)
  	add_foreign_key(:clientes_juegos,:clientes)
  end
end
