json.array!(@orders) do |order|
  json.extract! order, :id, :nombre, :references, :compradors, :direccion, :references, :compradors, :email, :references, :compradors, :telefono, :references, :compradors
  json.url order_url(order, format: :json)
end
