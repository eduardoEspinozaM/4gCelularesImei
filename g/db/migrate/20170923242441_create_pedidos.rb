class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.integer :operadora_id
      t.integer :telefono_id
      t.integer :imei
      t.string :email
      t.string :nro_telefono
      t.decimal :total
      t.boolean :estado_pago

      t.timestamps
    end
  end
end
