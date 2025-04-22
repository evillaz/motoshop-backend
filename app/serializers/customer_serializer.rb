class CustomerSerializer < ActiveModel::Serializer
  attributes :nombre, :primerApellido, :segundoApellido, :dni, :direccion, :departamento, :provincia, :distrito

  has_many :sales
end
