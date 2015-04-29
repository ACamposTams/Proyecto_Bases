class Coleccionable < ActiveRecord::Base
	has_many :cart_coleccionables

	before_destroy :ensure_not_referenced_by_any_cart_coleccionable
	def ensure_not_referenced_by_any_cart_coleccionable
	if cart_coleccionables.empty?
		return true
	else
		errors.add(:base, 'Producto Presente')
		return false
	end
end
end
