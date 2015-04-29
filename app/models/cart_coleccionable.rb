class CartColeccionable < ActiveRecord::Base
	belongs_to :coleccionable
	belongs_to :cart
	belongs_to :order

	def total_price
		coleccionable.precio * cantidad
	end
end
