class AddFechaEmisionAndImporteToMotorcycles < ActiveRecord::Migration[8.0]
  def change
    add_column :motorcycles, :fecha_emision, :date
    add_column :motorcycles, :importe, :decimal, precision: 10, scale: 2
  end
end
