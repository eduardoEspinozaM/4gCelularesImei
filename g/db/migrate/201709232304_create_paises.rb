class CreatePaises < ActiveRecord::Migration[5.1]
  def change
    create_table :paises do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
