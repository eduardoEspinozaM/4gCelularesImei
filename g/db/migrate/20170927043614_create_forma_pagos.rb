class CreateFormaPagos < ActiveRecord::Migration[5.1]
  def change
    create_table :forma_pagos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
