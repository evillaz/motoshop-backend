class CreateTitles < ActiveRecord::Migration[8.0]
  def change
    create_table :titles do |t|
      t.integer :title_number
      t.string :password
      t.references :sale, null: false, foreign_key: true

      t.timestamps
    end
  end
end
