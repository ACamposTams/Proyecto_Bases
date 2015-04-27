class AgregarConsola < ActiveRecord::Migration
  def change 
  	add_column :juegos, :consola , :string, :null=>false
  end
end
