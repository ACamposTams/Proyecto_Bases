json.array!(@juegos) do |juego|
  json.extract! juego, :id, :titulo, :publisher, :anio, :precio, :consola
  json.url juego_url(juego, format: :json)
end
