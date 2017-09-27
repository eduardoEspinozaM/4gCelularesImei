json.extract! pedido, :id, :operadora_id, :telefono_id, :imei, :email, :nro_telefono, :total, :estado_pago, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
