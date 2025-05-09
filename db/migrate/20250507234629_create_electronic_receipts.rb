class CreateElectronicReceipts < ActiveRecord::Migration[8.0]
  def change
    create_table :electronic_receipts do |t|
      t.string :receipt_number
      t.date :issue_date
      t.references :sale, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
