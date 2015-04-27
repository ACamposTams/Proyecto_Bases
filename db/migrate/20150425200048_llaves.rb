class Llaves < ActiveRecord::Migration
  def change
  	add_foreign_key(:juegos,:consolas)
  end
end
