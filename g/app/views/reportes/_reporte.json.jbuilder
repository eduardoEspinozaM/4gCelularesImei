json.extract! reporte, :id, :marca, :modelo, :imei, :tipo, :operador, :estadoR, :estadoP, :ciudad, :created_at, :updated_at
json.url reporte_url(reporte, format: :json)
