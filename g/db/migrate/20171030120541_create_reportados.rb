class CreateReportados < ActiveRecord::Migration[5.1]
  def change
    create_table :reportados do |t|
      t.string :marca
      t.string :modelo
      t.bigint :imei
      t.string :tipo
      t.string :operador
      t.boolean :estadoR
      t.boolean :estadoP
      t.string :ciudad

      t.timestamps
    end
  end
end
