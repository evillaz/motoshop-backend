class CreateTitles < ActiveRecord::Migration[8.0]
  def change
    create_table :titulos do |t|
      t.integer :numero_titulo
      t.string :codigo
      t.references :sale, null: false, foreign_key: true

      t.timestamps
    end
  end
end
