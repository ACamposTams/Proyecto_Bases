json.array!(@consolas) do |consola|
  json.extract! consola, :id, :nombre, :marca, :precio
  json.url consola_url(consola, format: :json)
end
