class CreateColeccionables < ActiveRecord::Migration
  def change
    create_table :coleccionables do |t|
      t.string :nombre
      t.string :marca
      t.integer :precio

      t.timestamps
    end
  end
end
