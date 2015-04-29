class CombinarColecsCart < ActiveRecord::Migration
  def change
  def up
  	Cart.all.each do |cart|
  		sums = cart.cart_coleccionables.group(:coleccionable_id).sum(:coleccionable)

  		sums.each do |juego_id, cantidad|
  			if cantidad > 1
  				cart.cart_coleccionables.where(coleccionable_id: coleccionable_id).delete_all
  				cart.cart_coleccionables(coleccionable_id: coleccionable_id, cantidad: cantidad)
  			end
  		end
  	end
  end

  def down
  	CartProducto.where("cantidad>1").each do |cart_coleccionable|
  		cart_coleccionable.cantidad.times do
  			CartColeccionable.create cart_id: cart_coleccionable.cart_id, coleccionable_id: cart_coleccionable.coleccionable_id, cantidad:1
  		end

  		cart_coleccionable.destroy

  	end
  end
end
end
