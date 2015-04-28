class CartProducto < ActiveRecord::Base
	belongs_to :juego
	belongs_to :cart

	def total_price
		juego.precio * cantidad
	end
end
