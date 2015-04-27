json.array!(@tiendas_juegos) do |tiendas_juego|
  json.extract! tiendas_juego, :id, :cantidad
  json.url tiendas_juego_url(tiendas_juego, format: :json)
end
