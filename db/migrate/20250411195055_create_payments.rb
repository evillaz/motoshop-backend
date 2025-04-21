class CreatePayments < ActiveRecord::Migration[8.0]
  def change
    create_table :payments do |t|
      t.integer :transaction_number
      t.decimal :amount, precision: 10, scale: 2
      t.string :method
      t.references :sale, null: false, foreign_key: true

      t.timestamps
    end
  end
end
