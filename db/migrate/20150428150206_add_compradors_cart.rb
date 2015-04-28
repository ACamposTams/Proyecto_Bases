class AddCompradorsCart < ActiveRecord::Migration
  def change
  	add_column :carts,:comprador_id, :integer
  end
end
