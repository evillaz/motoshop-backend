class CreateMotorcycles < ActiveRecord::Migration[8.0]
  def change
    create_table :motorcycles do |t|
      t.string :factura
      t.string :modelo
      t.string :marca
      t.string :color
      t.string :numero_de_chasis
      t.string :numero_de_motor
      t.string :dua
      t.integer :anio
      
      t.timestamps
    end
  end
end
