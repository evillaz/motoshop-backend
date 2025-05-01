class TituloSerializer < ActiveModel::Serializer
  attributes :id, :numero_titulo, :codigo

  belongs_to :sale
end
