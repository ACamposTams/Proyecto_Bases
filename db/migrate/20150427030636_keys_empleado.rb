class KeysEmpleado < ActiveRecord::Migration
  def change
  	add_foreign_key(:empleados,:tiendas)
  end
end
