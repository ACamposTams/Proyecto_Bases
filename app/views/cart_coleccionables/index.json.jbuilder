json.array!(@cart_coleccionables) do |cart_coleccionable|
  json.extract! cart_coleccionable, :id, :consola_id, :cart_id, :cantidad, :order_id
  json.url cart_coleccionable_url(cart_coleccionable, format: :json)
end
