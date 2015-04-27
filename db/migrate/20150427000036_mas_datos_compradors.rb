class MasDatosCompradors < ActiveRecord::Migration
  def change
  	add_column :compradors, :nombre, :string, :null => false
  	add_column :compradors, :direccion, :string
  	add_column :compradors, :telefono, :integer
  end
end
