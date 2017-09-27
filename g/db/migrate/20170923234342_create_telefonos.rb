class CreateTelefonos < ActiveRecord::Migration[5.1]
  def change
    create_table :telefonos do |t|
      t.integer :modelo_id
      t.integer :tipo_id

      t.timestamps
    end
  end
end
