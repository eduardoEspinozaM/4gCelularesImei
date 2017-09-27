class CreateTipos < ActiveRecord::Migration[5.1]
  def change
    create_table :tipos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
