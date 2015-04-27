class ImagenesConsolas < ActiveRecord::Migration
  def change
  	add_column :consolas, :poster , :string
  	add_column :coleccionables, :poster , :string
  end
end
