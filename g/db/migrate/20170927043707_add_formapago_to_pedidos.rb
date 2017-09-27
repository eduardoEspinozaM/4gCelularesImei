class AddFormapagoToPedidos < ActiveRecord::Migration[5.1]
  def change
    add_column :pedidos, :formapago_id, :integer
  end
end
