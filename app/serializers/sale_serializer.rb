class SaleSerializer < ActiveModel::Serializer
  attributes :id, :total_amount, :boleta, :created_at

  has_one :plate
  has_one :title
  
  belongs_to :motorcycle
  belongs_to :customer
end