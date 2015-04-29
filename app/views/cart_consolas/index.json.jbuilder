json.array!(@cart_consolas) do |cart_consola|
  json.extract! cart_consola, :id, :consola_id, :cart_id, :cantidad, :
  json.url cart_consola_url(cart_consola, format: :json)
end
