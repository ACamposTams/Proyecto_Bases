json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :nombre, :anio_de_contratacion
  json.url empleado_url(empleado, format: :json)
end
