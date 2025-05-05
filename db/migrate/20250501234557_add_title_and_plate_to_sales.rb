class AddTitleAndPlateToSales < ActiveRecord::Migration[8.0]
  def change
    add_reference :sales, :title, null: true, foreign_key: true
    add_reference :sales, :plate, null: true, foreign_key: true
  end
end
