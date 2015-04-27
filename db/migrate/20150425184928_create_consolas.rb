class CreateConsolas < ActiveRecord::Migration
  def change
    create_table :consolas do |t|
      t.string :nombre, :null => false
      t.string :marca, :null => false
      t.integer :precio, :null => false

      t.timestamps
    end
  end
end
