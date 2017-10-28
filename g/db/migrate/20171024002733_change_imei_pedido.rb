class ChangeImeiPedido < ActiveRecord::Migration[5.1]
  def change
  	change_column :pedidos, :imei, :bigint
  end
end
