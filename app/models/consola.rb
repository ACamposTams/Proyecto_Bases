class Consola < ActiveRecord::Base
	has_many :cart_consolas

	before_destroy :ensure_not_referenced_by_any_cart_consola

def ensure_not_referenced_by_any_cart_consola
	if cart_consolas.empty?
		return true
	else
		errors.add(:base, 'Producto Presente')
		return false
	end
end
end
