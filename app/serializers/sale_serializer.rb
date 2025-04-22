class SaleSerializer < ActiveModel::Serializer
  attributes :id, :total_amount, :boleta, :created_at

  belongs_to :motorcycle
  belongs_to :customer
end