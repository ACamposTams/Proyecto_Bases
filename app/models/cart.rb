class Cart < ActiveRecord::Base
	has_many :cart_productos, dependent: :destroy

	def add_product(juego_id)
		current_item = cart_productos.find_by_juego_id(juego_id)
		if current_item
			current_item.cantidad += 1
		else
			current_item = cart_productos.build(juego_id: juego_id)
		end
		current_item
	end

	def total_price
		cart_productos.to_a.sum {|item| item.total_price}
	end
end
