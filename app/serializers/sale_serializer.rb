class SaleSerializer < ActiveModel::Serializer
  attributes :id, :total_amount, :boleta, :created_at

  has_one :placa
  has_one :titulo
  
  belongs_to :motorcycle
  belongs_to :customer
end