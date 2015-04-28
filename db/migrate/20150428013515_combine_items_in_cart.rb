class CombineItemsInCart < ActiveRecord::Migration
  def up
  	Cart.all.each do |cart|
  		sums = cart.cart_productos.group(:juego_id).sum(:cantidad)

  		sums.each do |juego_id, cantidad|
  			if cantidad > 1
  				cart.cart_productos.where(juego_id: juego_id).delete_all
  				cart.cart_productos(juego_id: juego_id, cantidad: cantidad)
  			end
  		end
  	end
  end

  def down
  	CartProducto.where("cantidad>1").each do |cart_producto|
  		cart_producto.cantidad.times do
  			CartProducto.create cart_id: cart_producto.cart_id, juego_id: cart_producto.juego_id, cantidad:1
  		end

  		cart_producto.destroy

  	end
  end
 end
