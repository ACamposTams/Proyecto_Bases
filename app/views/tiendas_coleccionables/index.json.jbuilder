json.array!(@tiendas_coleccionables) do |tiendas_coleccionable|
  json.extract! tiendas_coleccionable, :id, :cantidad
  json.url tiendas_coleccionable_url(tiendas_coleccionable, format: :json)
end
