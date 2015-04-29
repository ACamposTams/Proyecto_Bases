class CombinarConsolasCart < ActiveRecord::Migration
  def change
  	def up
  	Cart.all.each do |cart|
  		sums = cart.cart_consolas.group(:consola_id).sum(:cantidad)

  		sums.each do |consola_id, cantidad|
  			if cantidad > 1
  				cart.cart_consolas.where(consola_id: consola_id).delete_all
  				cart.cart_consolas(consola_id: consola_id, cantidad: cantidad)
  			end
  		end
  	end
  end

  def down
  	Cartconsola.where("cantidad>1").each do |cart_consola|
  		cart_consola.cantidad.times do
  			Cartconsola.create cart_id: cart_consola.cart_id, consola_id: cart_consola.consola_id, cantidad:1
  		end

  		cart_consola.destroy

  	end
  end
  end
end
