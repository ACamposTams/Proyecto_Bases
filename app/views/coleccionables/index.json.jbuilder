json.array!(@coleccionables) do |coleccionable|
  json.extract! coleccionable, :id, :nombre, :marca, :precio
  json.url coleccionable_url(coleccionable, format: :json)
end
