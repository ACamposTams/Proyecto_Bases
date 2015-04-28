class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :id_compradors
      t.belongs_to :comprador, :null => false
      t.timestamps
    end
  end
end
