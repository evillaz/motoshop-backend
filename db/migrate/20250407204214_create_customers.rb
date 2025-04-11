class CreateCustomers < ActiveRecord::Migration[8.0]
  def change
    create_table :customers do |t|
      t.string :nombre
      t.string :primerApellido
      t.string :segundoApellido
      t.string :dni
      t.string :direccion
      t.string :departamento
      t.string :provincia
      t.string :distrito

      t.timestamps
    end
  end
end
