class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :primerApellido, :segundoApellido, :dni, :direccion, :departamento, :provincia, :distrito

  has_many :sales
end
