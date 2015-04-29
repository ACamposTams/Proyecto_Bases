class Order < ActiveRecord::Base
	has_many :cart_productos, dependent: :destroy
	has_many :cart_consolas, dependent: :destroy
	has_many :cart_coleccionables, dependent: :destroy

	def add_cart_productos_from_cart(cart)
		cart.cart_productos.each do |item|
			item.cart_id = nil
			cart_productos << item
		end
	end

	def add_cart_consolas_from_cart(cart)
		cart.cart_consolas.each do |item|
			item.cart_id = nil
			cart_consolas << item
		end
	end

	def add_cart_coleccionables_from_cart(cart)
		cart.cart_coleccionables.each do |item|
			item.cart_id = nil
			cart_coleccionables << item
		end
	end
end
