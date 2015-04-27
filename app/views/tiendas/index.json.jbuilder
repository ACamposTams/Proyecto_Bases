json.array!(@tiendas) do |tienda|
  json.extract! tienda, :id, :direccion, :telefono
  json.url tienda_url(tienda, format: :json)
end
