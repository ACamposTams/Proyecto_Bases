class AddEnviadoToOrders < ActiveRecord::Migration
  def change
  	add_column :orders,:enviado,:bool, default: false
  end
end
