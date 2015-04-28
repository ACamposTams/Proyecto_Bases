class AgregaVideo < ActiveRecord::Migration
  def change
  	add_column :juegos, :video , :string
  end
end
