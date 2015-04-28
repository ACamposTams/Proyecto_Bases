class Juego < ActiveRecord::Base
	has_many :cart_productos

	before_destroy :ensure_not_referenced_by_any_line_item

def ensure_not_referenced_by_any_line_item
	if cart_productos.empty?
		return true
	else
		errors.add(:base, 'Producto Presente')
		return false
	end
end
end
