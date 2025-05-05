class CreatePlates < ActiveRecord::Migration[8.0]
  def change
    create_table :plates do |t|
      t.string :plate
      t.string :pay_code
      t.boolean :status, default: false
      t.references :sale, null: false, foreign_key: true

      t.timestamps
    end
  end
end
