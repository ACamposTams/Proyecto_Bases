class CambiaJuegos < ActiveRecord::Migration
  def change
  	add_index :juegos, :consola_id
  end
end
