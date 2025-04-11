class CreateSales < ActiveRecord::Migration[8.0]
  def change
    create_table :sales do |t|
      t.string :factura, null: false
      t.string :dni
      t.decimal :total_amount, precision: 10, scale: 2
      t.string :boleta
      
      t.timestamps
    end

    add_index :sales, :factura
    add_index :sales, :dni
  end
end