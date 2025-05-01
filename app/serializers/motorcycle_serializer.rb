class MotorcycleSerializer < ActiveModel::Serializer
  attributes :factura, :modelo, :marca, :color, :numero_de_chasis, :numero_de_motor, :dua, :anio, :fecha_emision, :importe
  
  has_one :sale
end
