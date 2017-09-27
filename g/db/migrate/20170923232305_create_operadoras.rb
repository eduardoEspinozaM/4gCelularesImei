class CreateOperadoras < ActiveRecord::Migration[5.1]
  def change
    create_table :operadoras do |t|
      t.integer :pais_id
      t.string :nombre
      t.decimal :costo

      t.timestamps
    end
  end
end
