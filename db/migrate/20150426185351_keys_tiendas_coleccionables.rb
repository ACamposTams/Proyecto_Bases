class KeysTiendasColeccionables < ActiveRecord::Migration
  def change
  	add_foreign_key(:tiendas_coleccionables,:coleccionables)
  	add_foreign_key(:tiendas_coleccionables,:tiendas)
  end
end
