class KeysTiendasConsolas < ActiveRecord::Migration
  def change
  	add_foreign_key(:tiendas_consolas,:consolas)
  	add_foreign_key(:tiendas_consolas,:tiendas)
  end
end
