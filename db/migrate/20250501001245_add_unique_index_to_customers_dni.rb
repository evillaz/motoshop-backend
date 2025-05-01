class AddUniqueIndexToCustomersDni < ActiveRecord::Migration[8.0]
  def change
    add_index :customers, :dni, unique: true
  end
end
