class PlacaSerializer < ActiveModel::Serializer
  attributes :id, :codigo, :placa, :monto

  belongs_to :sale
end
