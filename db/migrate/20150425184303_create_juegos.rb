class CreateJuegos < ActiveRecord::Migration
  def change
    create_table :juegos do |t|
      t.string :titulo , :null => false
      t.string :publisher, :null => false
      t.integer :anio, :null => false
      t.integer :precio, :null => false
      t.belongs_to :consola

      t.timestamps
    end
  end
end
