class CartProducto < ActiveRecord::Base
	belongs_to :juego
	belongs_to :cart
	belongs_to :order

	def total_price
		juego.precio * cantidad
	end
end
