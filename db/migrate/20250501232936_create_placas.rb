class CreatePlacas < ActiveRecord::Migration[8.0]
  def change
    create_table :placas do |t|
      t.string :codigo
      t.string :placa
      t.decimal :monto, precision: 10, scale: 2, default: 66.80
      t.references :sale, null: false, foreign_key: true

      t.timestamps
    end
  end
end
