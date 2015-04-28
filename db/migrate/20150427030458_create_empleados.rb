class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.integer :anio_de_contratacion
      t.belongs_to :tienda, :null => :false

      t.timestamps
    end
  end
end
