class PlacaSerializer < ActiveModel::Serializer
  attributes :id, :plate, :pay_code, :status

  belongs_to :sale
end
