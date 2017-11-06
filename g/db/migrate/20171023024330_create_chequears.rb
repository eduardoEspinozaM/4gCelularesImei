class CreateChequears < ActiveRecord::Migration[5.1]
  def change
    create_table :chequears do |t|
      t.string :imei

      t.timestamps
    end
  end
end
