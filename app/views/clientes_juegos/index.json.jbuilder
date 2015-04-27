json.array!(@clientes_juegos) do |clientes_juego|
  json.extract! clientes_juego, :id, :id_juego, :id_cliente, :total
  json.url clientes_juego_url(clientes_juego, format: :json)
end
