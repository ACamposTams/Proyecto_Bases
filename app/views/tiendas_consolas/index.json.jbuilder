json.array!(@tiendas_consolas) do |tiendas_consola|
  json.extract! tiendas_consola, :id, :cantidad
  json.url tiendas_consola_url(tiendas_consola, format: :json)
end
