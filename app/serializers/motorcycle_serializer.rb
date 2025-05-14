class MotorcycleSerializer < ActiveModel::Serializer
  attributes :id, :factura, :modelo, :marca, :color, :numero_de_chasis, :numero_de_motor, :dua, :anio, :fecha_emision, :importe
  
  has_one :sale
end
