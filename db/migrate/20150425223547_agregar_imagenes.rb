class AgregarImagenes < ActiveRecord::Migration
  def change
  	add_column :juegos, :poster , :string
  end
end
