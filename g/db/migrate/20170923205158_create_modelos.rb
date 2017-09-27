class CreateModelos < ActiveRecord::Migration[5.1]
  def change
    create_table :modelos do |t|
      t.integer :marca_id
      t.string :nombre

      t.timestamps
    end
  end
end
