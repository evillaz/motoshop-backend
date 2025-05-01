class AddTituloAndPlacaToSales < ActiveRecord::Migration[8.0]
  def change
    add_reference :sales, :titulo, null: true, foreign_key: true
    add_reference :sales, :placa, null: true, foreign_key: true
  end
end
