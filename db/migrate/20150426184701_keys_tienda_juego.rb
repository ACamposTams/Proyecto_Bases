class KeysTiendaJuego < ActiveRecord::Migration
  def change
  	add_foreign_key(:tiendas_juegos,:juegos)
  	add_foreign_key(:tiendas_juegos,:tiendas)
  end
end
