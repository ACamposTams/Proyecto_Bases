class CartConsola < ActiveRecord::Base
	belongs_to :consola
	belongs_to :cart
	belongs_to :order

	def total_price
		consola.precio * cantidad
	end
end
