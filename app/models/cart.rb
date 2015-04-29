class Cart < ActiveRecord::Base
	has_many :cart_productos, dependent: :destroy
	has_many :cart_consolas, dependent: :destroy
	has_many :cart_coleccionables, dependent: :destroy
	belongs_to :compradors

	def add_product(juego_id)
		current_item = cart_productos.find_by_juego_id(juego_id)
		if current_item
			current_item.cantidad += 1
		else
			current_item = cart_productos.build(juego_id: juego_id)
		end
		current_item
	end

	def add_consola(consola_id)
		current_consola = cart_consolas.find_by_consola_id(consola_id)
		if current_consola
			current_consola.cantidad += 1
		else
			current_consola = cart_consolas.build(consola_id: consola_id)
		end
		current_consola
	end

	def add_coleccionable(coleccionable_id)
		current_coleccionable = cart_coleccionables.find_by_coleccionable_id(coleccionable_id)
		if current_coleccionable
			current_coleccionable.cantidad += 1
		else
			current_coleccionable = cart_coleccionables.build(coleccionable_id: coleccionable_id)
		end
		current_coleccionable
	end


	def total_price
		cart_consolas.to_a.sum {|item| item.total_price} + cart_productos.to_a.sum {|item| item.total_price} + cart_coleccionables.to_a.sum{|item| item.total_price}
	end
end
