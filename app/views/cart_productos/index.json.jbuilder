json.array!(@cart_productos) do |cart_producto|
  json.extract! cart_producto, :id, :product_id, :cart_id
  json.url cart_producto_url(cart_producto, format: :json)
end
